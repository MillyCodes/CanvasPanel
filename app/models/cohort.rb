class Cohort < ApplicationRecord
    has_many :admins
    belongs_to :course
    belongs_to :instructor
    has_many :students, dependent: :destroy
end

#can model have multiple belong_to statements???
