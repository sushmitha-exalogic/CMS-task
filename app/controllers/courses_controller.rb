class CoursesController < ApplicationController

  before_action :get_details 

  def new
  	@courses = Course.all
  	@course = Course.new
  end

  def create
  	@course=Course.new(course_params)
    if @course.save
      redirect_to new_course_path
    else
      @courses = Course.all
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
  	if @course.update(course_params)
	    redirect_to new_course_path
	  else
	    render 'edit'
	  end
  end

  def destroy
  	@course = Course.find(params[:id])
    @course.destroy
    redirect_to new_course_path
  end

  private
  def course_params
    params.require(:course).permit(:id,:name,:course_type,:year,:session,:campu_id)
  end

  def get_details
  	if params[:id]
  		@course = Course.find(params[:id])
  	end
  end 
end
