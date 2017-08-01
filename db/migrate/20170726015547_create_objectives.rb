class CreateObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :objectives do |t|
      t.string :description, :null => false

      t.timestamps
    end
  end
end
