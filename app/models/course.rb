class Course < ApplicationRecord
    # belongs_to :admin
    has_many :cohorts
end
