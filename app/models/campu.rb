class Campu < ApplicationRecord
	has_many :courses
	validates :campus, presence:{ message: "please enter the campus name"},
   length: { maximum: 50 }
end
