class Student < ApplicationRecord
    belongs_to :cohort
    # belong_to :admin

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
