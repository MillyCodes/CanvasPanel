class Student < ApplicationRecord
    belongs_to :cohort
    has_many :admins
    has_one_attached :avatar

    def full_name 
        "#{lastname}, #{firstname}"
    end
end
