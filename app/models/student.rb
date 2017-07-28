class Student < ApplicationRecord
	has_many :assignments
	has_many :scores, through: :assignments
	has_many :objectives, through: :assignments
	
end
