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
		time_entry = project.time_entries.new(time_entry_params)

		time_entry.save
		redirect_to '/projects/#{project.id}/time_entries'
	end

	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])

		if time_entry.update(time_entry_params)

		redirect_to '/projects/#{project.id}/time_entries'
		else 
			redirect_to '/projects/#{project.id}/time_entries/#{time_entry.id}/edit'
		end
	end

	def edit
		# Input
		# params[:project_id]
		# params[:id]
		# Output
		# the edit form
		@project = Project.find(params[:id])
		@time_entry = @project.time_entries.find(params[:id])
	end


	private

	def time_entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date)
	end
end
