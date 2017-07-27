class Score < ApplicationRecord
	belongs_to :subject
	belongs_to :assignment
end
