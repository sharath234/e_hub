class CreateJointableexamssubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :jointableexamssubjects do |t|
      create_join_table :exams, :subjects
    end
  end
end
