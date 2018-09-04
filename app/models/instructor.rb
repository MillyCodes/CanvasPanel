class Instructor < ApplicationRecord
    has_many :admins
    has_many :cohorts
    has_one_attached :avatar

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
