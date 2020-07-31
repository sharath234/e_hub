class CreateJointablestudentssubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :jointablestudentssubjects do |t|
      create_join_table :students, :subjects
    end
  end
end
