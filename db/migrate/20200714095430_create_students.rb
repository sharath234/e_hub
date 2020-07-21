class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :age
      t.string :gender

      t.integer :school_id
      t.integer :branch_id
      t.integer :standard_id

      t.timestamps
    end
  end
end
