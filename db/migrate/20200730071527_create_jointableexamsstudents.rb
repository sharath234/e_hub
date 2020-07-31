class CreateJointableexamsstudents < ActiveRecord::Migration[6.0]
  def change
    create_table :jointableexamsstudents do |t|
      create_join_table :exams, :students
    end
  end
end
