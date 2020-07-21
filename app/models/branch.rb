class Branch < ApplicationRecord
    belongs_to :school
    has_many :students
    has_many :standards , through: :students

    def to_s
        return self.location
    end
    def title
        return self.to_s
    end
end
