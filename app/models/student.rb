class Student < ApplicationRecord
    belongs_to :school, optional: true
    belongs_to :branch,  optional: true
    belongs_to :standard, optional: true

end
