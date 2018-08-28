# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# one course subject
Course.create(coursename: "Software Engineering12", totalhours: Faker::Number.number(2))
Course.create(coursename: "Software Engineering234", totalhours: Faker::Number.number(2))

Course.create(coursename: "Software Engineering26", totalhours: Faker::Number.number(2))

# one instructor
# 30.times do
# Instructor.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.email, age: 32,salary: Faker::Number.number(5), avatar: Faker::Avatar.image, education: "Master's Degree")
# end
# one cohort
# Cohort.create(
#     name: "Software Engineering Eagles", startdate: Faker::Date.backward(14) , enddate: Faker::Date.forward(23), instructor_id: 1, course_id: 1)

# 10 students
# 30.times do
#     Student.create(
#         firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.email, age: 22, avatar: Faker::Avatar.image, cohort_id: 1)
# end

# Admin.create!(email: "me@home.com", password: "ilovepizza")