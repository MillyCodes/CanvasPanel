class Instructor < ApplicationRecord
    # belongs_to :admin
    has_many :cohorts
end
