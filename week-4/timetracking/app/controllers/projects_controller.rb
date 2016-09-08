class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
		render 'index'
	end

	def show
		@project = Project.find_by(id: params[:id])
		unless @project
			render "no_projects_found"
		end
	end

	def new 
		@project = Project.new
	end
end
