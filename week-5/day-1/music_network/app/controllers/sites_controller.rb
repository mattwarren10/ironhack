class SitesController < ApplicationController
	def index
		@concerts = Concert.all
		@date_within_one_month = Concert.where("date >= ?", Time.now).where("date <= ?", Time.now.end_of_month)
		@date_until_today = Concert.where("date >= ?", Time.now).where("date <= ?", Time.now.end_of_day)
	end

	def price
		@concerts = Concert.where("price <= ?", params[:number])
		
	end

end
