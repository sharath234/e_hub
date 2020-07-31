class Exam < ApplicationRecord
    has_and_belongs_to_many :subjects, optional: true
    has_and_belongs_to_many :students
    has_many :scores 
end
