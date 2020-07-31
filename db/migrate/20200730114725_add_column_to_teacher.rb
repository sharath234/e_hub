class AddColumnToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :subject_id, :integer
  end
end
