class CreateScheduleItems < ActiveRecord::Migration[5.1]
  def change
    create_table :schedule_items do |t|

      t.date :day 

      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
