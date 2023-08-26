# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
    first_name: "Mehmet",
    last_name: "ESGI",
    email: "deneme@deneme.com"
)

20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "LName #{i+1}",
    email: "student#{i+1}@student.com"
  )
end

Student.all.each do |s|
  s.blogs.create(title: "Dummy Blog for Student #{s.id}",
    content: "Costom content pending")
    s.blogs.create(title: "Dummy Blog for Student #{s.id}",
    content: "Costom content pending")
end

Course.create(name: "Ruby on Rails bootcamp", description: "Pending")
Course.create(name: "Angular bootcamp", description: "Pending")
Course.create(name: "NodeJs bootcamp", description: "Pending")
Course.create(name: "Java bootcamp", description: "Pending")
Course.create(name: "Python bootcamp", description: "Pending")
Course.create(name: "ReactJs bootcamp", description: "Pending")