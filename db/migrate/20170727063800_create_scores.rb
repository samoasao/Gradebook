class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :value, :null => true
      t.references :assignment, foreign_key: true
      t.references :subject, foreign_key: true

    end
  end
end
