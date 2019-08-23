class AssigningsController < ApplicationController
	before_action :find_department
	def new
		@course = Course.all
		@department = Department.all
		@assign = Assigning.new
		@assignings = Assigning.all
	end

	def create
		@assign = Assigning.new(assign_params)
		if  @assign.save
			redirect_to new_assigning_path
		else
			@course = Course.all
			@department = Department.all
			@assignings = Assigning.all
			render 'new'
		end
	end

	def show 
	end

	def edit
		@course = Course.all
		@department = Department.all
	end

	def update
		if @assigning.update(assign_params)
			redirect_to new_assigning_path
		else
			render 'edit'
		end
	end
	def destroy 
		@assigning.destroy
		redirect_to new_assigning_path
	end


	private
	def assign_params
		params.require(:assigning).permit(:course_id,:department_id)
	end
	def find_department
		if params[:id]
			@assigning = Assigning.find_by_id(params[:id])
		end	
	end
end
