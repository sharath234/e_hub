class AddcolumnToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :exam_id, :integer
  end
end
