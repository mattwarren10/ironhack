class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def show 
  	tournaments = Tournament.all
  	render json: tournaments
  end

  def create
  	tournament = Tournament.create(tournament_params)
  	if tournament.save
  		render({ json: tournament, status: 201 })
  	else 
  		render status: 400, json: { errors: tournament.errors }
  	end
  end

  def delete
  	tournament = Tournament.find_by(id: params[:id])
  	tournament.destroy
  	render json: Tournament.all
  end

  private
  def tournament_params
  	params.require(:tournament).permit(:name)
  end

end
