class TimeEntriesController < ApplicationController
	def index
		#input 
		# project id under params[:id]
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(
			date: Time.now.beginning_of_day..Time.now.end_of_day
		)
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.new(
			minutes: params[:time_entry][:minutes],
			hours: params[:time_entry][:hours],
			date: params[:time_entry][:date]
		)

		time_entry.save
		redirect_to '/projects/#{project.id}/time_entries'
	end
end
