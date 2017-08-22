class Student < ApplicationRecord
	has_many :assignments, dependent: :destroy
	has_many :scores, through: :assignments
	has_many :objectives, through: :assignments

	validates :name, presence: true
	validates :name, uniqueness: true
	
end
