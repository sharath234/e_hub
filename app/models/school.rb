class School < ApplicationRecord
    has_many :branches
    has_many :standards
    has_many :students
end
