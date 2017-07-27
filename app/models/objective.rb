class Objective < ApplicationRecord
	has_many :assignments
	has_many :students, through: :assignments
	has_many :scores
end
