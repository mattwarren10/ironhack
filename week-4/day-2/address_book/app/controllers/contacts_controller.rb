class ContactsController < ApplicationController
	def index
		@contacts = Contact.order(created_at: :desc)
		render 'index'
	end

	def new
		
		render 'new'
	end
end
