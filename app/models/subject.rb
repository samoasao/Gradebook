class Subject < ApplicationRecord
	has_many :scores, through: :schedule_items
end
