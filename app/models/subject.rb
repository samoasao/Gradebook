class Subject < ApplicationRecord
	has_many :schedule_items
	has_many :scores, through: :schedule_items
end
