class RemoveSubjectIdFromScores < ActiveRecord::Migration[5.1]
  def change
  	remove_column :scores, :subject_id, :integer 
  end
end
