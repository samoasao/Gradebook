class ScheduleItem < ApplicationRecord
	has_many :scores
	belongs_to :subject
end
