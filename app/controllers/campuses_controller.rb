class CampusesController < ApplicationController

	before_action :get_details

	def index
	end

	def new
		@campus = Campu.new
	end

	def create
		@campus=Campu.new(campus_params)
    if @campus.save
      redirect_to new_course_path
    else
      render 'new'
    end
	end

	private
  def campus_params
    params.require(:campu).permit(:id,:campus)
  end

  def get_details
  	if params[:id]
  		@campus1 = Campu.find(params[:id])
  	end
  end 

end
