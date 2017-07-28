class RemoveTimeFromSubjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :subjects, :time, :datetime
  end
end
