class ScheduleItem < ApplicationRecord
	has_many :scores
	belongs_to :subject
	accepts_nested_attributes_for :scores
end
