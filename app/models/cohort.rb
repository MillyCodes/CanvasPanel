class Cohort < ApplicationRecord
    # belongs_to :admin
    belongs_to :course
    has_one :instructor
    has_many :students
end
