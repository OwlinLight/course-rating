# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

6.times do
    group = Group.create!(name: Faker::Company.name,
                          github_org: Faker::Internet.slug)
    5.times do
      group.students.create!(buckid: Faker::Number.unique.number(digits: 9),
                             fname: Faker::Name.first_name,
                             lname: Faker::Name.last_name)
    end
  end
  