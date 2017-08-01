class Score < ApplicationRecord
	belongs_to :schedule_item
	belongs_to :assignment

	validates :value, numericality: true
end
