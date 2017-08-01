class Objective < ApplicationRecord
	has_many :assignments
	has_many :students, through: :assignments
	has_many :scores, through: :assignments

	validates :description, presence: true
	validates :description, uniqueness: true
end
