class Student < ApplicationRecord
    belongs_to :cohort
    belongs_to :admin

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
