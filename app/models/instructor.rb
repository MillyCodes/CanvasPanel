class Instructor < ApplicationRecord
    # belongs_to :admin
    has_many :cohorts

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
