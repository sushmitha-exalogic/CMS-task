class Department < ApplicationRecord
	has_many :assignings
	has_many :courses, through: :assignings
	validates :name, presence:{ message: "please enter the department name"}
end