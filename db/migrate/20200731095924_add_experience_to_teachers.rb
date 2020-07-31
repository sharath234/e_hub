class AddExperienceToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :experience, :integer
  end
end
