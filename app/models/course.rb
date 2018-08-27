class Course < ApplicationRecord
    has_many :admins
    has_many :cohorts
end
