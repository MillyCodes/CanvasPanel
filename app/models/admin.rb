class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable, :recoverable, :rememberable, :validatable
    has_many :students
    has_many :instructors
    has_many :courses
    has_many :cohorts

    def full_name 
      "#{last_name}, #{first_name}"
  end
end

