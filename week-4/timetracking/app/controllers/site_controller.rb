class SiteController < ApplicationController
	def home #action
		render 'home' # ----> app/views/site/home.html.erb
		#name of view template; display the erb called home.
		#render(:home) #render checks the view folder.

	end

	def contact
		render 'contact'
	end
end
