class Subject < ApplicationRecord
    belongs_to :teacher, optional: true
    has_and_belongs_to_many :students
    has_and_belongs_to_many :exams, optional:true 
    belongs_to :teacher, optional:true 
end
