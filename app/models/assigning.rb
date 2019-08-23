class Assigning < ApplicationRecord
	belongs_to :course
	belongs_to :department
	validates :course_id, uniqueness: { scope: :department_id }
end
