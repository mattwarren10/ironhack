class ContactsController < ApplicationController
	def index
		@contacts = Contact.order(name: :ASC)
		render 'index'
	end

	def new

		render 'new'
	end

	def create 
		contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone_number => params[:contact][:phone],
	      :email => params[:contact][:email])

		contact.save

		redirect_to("/contacts")
	end
end
