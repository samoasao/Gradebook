class RemoveDayFromScores < ActiveRecord::Migration[5.1]
  def change
    remove_column :scores, :day, :datetime
  end
end
