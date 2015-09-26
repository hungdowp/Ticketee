class ProjectsController < ApplicationController
	def index
		
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			flash[:notice] = "Project has been created."
			redirect_to @project
		else
			#nothing
		end

		#debug test learn
		# # @my_local_var = 'Hung Do'
		# params
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params.require(:project).permit(:name, :description)
		# params.require(:action)
	end
end
