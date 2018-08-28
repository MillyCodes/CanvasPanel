class Instructor < ApplicationRecord
    has_many :admins
    has_many :cohorts

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
