class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.references :student, foreign_key: true
      t.references :objective, foreign_key: true

      t.timestamps
    end
  end
end
