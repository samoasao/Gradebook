class AddTimeToScheduleItems < ActiveRecord::Migration[5.1]
  def change
    add_column :schedule_items, :time, :Time
  end
end
