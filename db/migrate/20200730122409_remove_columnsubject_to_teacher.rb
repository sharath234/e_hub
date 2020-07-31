class RemoveColumnsubjectToTeacher < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :subject, :string
  end
end
