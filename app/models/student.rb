class Student < ApplicationRecord
    belongs_to :cohort
    has_many :admins

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
