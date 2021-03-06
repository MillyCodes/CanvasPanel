# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# two course subject
2.times do
    Course.create(coursename: "Software Engineering", totalhours: Faker::Number.number(2))
end

# one instructor
5.times do
    Instructor.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.email, age: 32,salary: Faker::Number.number(5), education: "Master's Degree")
end

2.times do
    Cohort.create(name: "Software Engineering Eagles", startdate: Faker::Date.backward(14) , enddate: Faker::Date.forward(23), instructor_id: 1, course_id: 1)
end
# 30 students
30.times do
    Student.create(
        firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.email, age: 22, cohort_id: 1 )
end

Admin.create!(email: "test@test.com", password: "test123")
