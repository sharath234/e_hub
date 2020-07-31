class Student < ApplicationRecord
    belongs_to :school, optional: true
    belongs_to :branch,  optional: true
    belongs_to :standard, optional: true
    has_and_belongs_to_many :teachers, optional: true
    has_and_belongs_to_many :exams, optional: true
    has_many :scores 
end

 