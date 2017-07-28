class AddScheduleItemIdToScores < ActiveRecord::Migration[5.1]
  def change
    add_reference :scores, :schedule_item, foreign_key: true
  end
end
