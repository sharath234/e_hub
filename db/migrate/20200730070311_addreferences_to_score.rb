class AddreferencesToScore < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :exam, index: true
    add_foreign_key :scores, :exams 
  end
end
