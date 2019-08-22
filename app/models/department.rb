class Department < ApplicationRecord
	belongs_to :course
	validates :name, presence:{ message: "please enter the department name"}
	validates :course_id,presence:{mesage: "please select course"}

end