class AddstudentreferencesToScore < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :student, foreign_key: true

  end
end
