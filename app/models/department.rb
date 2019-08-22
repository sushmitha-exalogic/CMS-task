class Department < ApplicationRecord
	has_many :course
	validates :name, presence:{ message: "please enter the department name"}
end