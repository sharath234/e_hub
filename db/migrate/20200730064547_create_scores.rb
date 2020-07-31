class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :telugu
      t.integer :hindi
      t.integer :english
      t.integer :maths
      t.integer :science
      t.integer :social
       
      t.timestamps
    end
  end
end
