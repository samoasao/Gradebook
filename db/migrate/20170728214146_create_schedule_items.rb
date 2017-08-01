class CreateScheduleItems < ActiveRecord::Migration[5.1]
  def change
    create_table :schedule_items do |t|

      t.date :day, :null => false
      t.time :time, :null => false
      t.references :subject, foreign_key: true, :null => false

      t.timestamps
    end
  end
end
