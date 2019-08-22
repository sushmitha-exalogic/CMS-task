class DepartmentsController < ApplicationController
	before_action :find_department
	
	def new
		@departments = Department.all
		@department = Department.new
	end
	def create
		@department = Department.new(dept_params)
		if @department.save
			redirect_to new_department_path
		else
			@departments = Department.all
			render 'new'
		end

	end
	def show 
	end
	def edit
	end
	def update
		if @department.update(dept_params)
			redirect_to new_department_path
		else
			render 'edit'
		end
	end
	def destroy 
		@department.destroy
		redirect_to new_department_path
	end

	private
	def dept_params
		params.require(:department).permit(:name,:course_id)
	end
	def find_department
		if params[:id]
			@department = Department.find_by_id(params[:id])
		end

	end
end
