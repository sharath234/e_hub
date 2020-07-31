class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :no_of_subjects
      t.integer :total_marks

      t.timestamps
    end
  end
end
