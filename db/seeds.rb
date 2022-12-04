# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




6.times do
    group = Group.create!(name: Faker::Company.name)
    5.times do
      student = group.students.create!
      user = User.create!(email: Faker::Internet.email, name: Faker::Name.first_name, password: Faker::Internet.password, student: student)
    end
  end