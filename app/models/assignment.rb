class Assignment < ApplicationRecord
  belongs_to :student
  belongs_to :objective
  has_many :scores
end
