class UsersController < ApplicationController
  before_action :user_setup, only: [:new, :home, :index, :show]
  before_action :redirect_if_already_logged_in, only: [:new]
  before_action :redirect_if_not_logged_in, only: [:show]
  # renders the home page
  def home
    #user_setup
  end

  def index
    @users = User.all
    #user_setup
  end

  # renders the signup form
  def new
    #redirect_if_already_logged_in
  end

  def show
    #user_setup
    #redirect_if_not_logged_in
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end   

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
