class Student < ApplicationRecord
	has_many :assignments
	has_many :scores
	has_many :objectives, through: :assignments
	
end
