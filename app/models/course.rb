class Course < ApplicationRecord
	belongs_to :campu
	has_many :departments
	validates :name, presence:{ message: "please enter the course name"},
   length: { maximum: 50 }
   validates :year, presence:{ message: "please enter the year"}
   validates :session, presence:{ message: "please enter the course name"}
   validates :campu_id, presence:{ message: "please select the campus"}
end
