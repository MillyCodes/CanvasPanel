# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# one course subject
Course.create(name: "Software Engineering", totalhours: Faker::Number.number(2))

# one instructor
Instructor.create(
    firstname: Faker::firstName, lastname: Faker::lastName, email: Faker::email, age: 32,salary: Faker::Number.number(5), avatar: Faker::imageUrl($width = 640, $height = 480), education: "Master's Degree" )

# one cohort
Course.create(
    coursename: "Software Engineering Eagles", startdate: Faker::Date.backward(14) , enddate: Faker::Date.forward(23), instructor: 1, course: 1)

# 10 students
10.times do
    Student.create(
        firstname: Faker::firstName, lastname: Faker::lastName, email: Faker::email, age: 22, avatar: Faker::imageUrl($width = 640, $height = 480) )
end