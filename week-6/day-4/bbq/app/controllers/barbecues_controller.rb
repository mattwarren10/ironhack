class BarbecuesController < ApplicationController
  def index
    @barbecues = Barbecue.order(:date)
    if user_signed_in?
      render :index
    else 
      redirect_to new_user_session_path
    end
  end

  def show
    # Don't add any code to this show action.
    # Implement your barbecue API in another action.
  end

  def new
    @bbq = Barbecue.new
  end

  def get_api
    barbecue = Barbecue.find(params[:id])
    unless barbecue
      render json: {error: "barbecue not found"},
        status: 404
      return
    end
    render json: barbecue
  end

  def create
    bbq_params = params.require(:barbecue).permit(:title, :venue, :date)
    @bbq = Barbecue.new(bbq_params)

    unless @bbq.save
      render(:new)
    else
      redirect_to(barbecues_path)
    end
  end
end
