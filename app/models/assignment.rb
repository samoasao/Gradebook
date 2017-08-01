class Assignment < ApplicationRecord
  belongs_to :student
  belongs_to :objective
  has_many :scores

  validates :objective_id, uniqueness: {scope: :student_id, message: "Objective is already assigned to this student."}
end
