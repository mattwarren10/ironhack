class SessionsController < ApplicationController
	def new
		#for the login form
	end

	def create
		#to login (create a session)
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/login'
		end
	end

	def destroy
		#to logout (delete a session)
		session.clear
		redirect_to '/'
	end
end
