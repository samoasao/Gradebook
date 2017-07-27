class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name

      t.timestamps
    end


    #adding a join table for our 
    #has_and_belongs_to_many relationship
    #model order needs to be alphabetical 
    create_table :objectives_students do |t|
      t.integer :objective_id
      t.integer :student_id 
    end

    #add an index to speed queries up
    add_index(:objectives_students, [:objective_id, :student_id])

  end
end
