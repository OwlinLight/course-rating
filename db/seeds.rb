# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




# 6.times do
#     group = Group.create!(name: Faker::Company.name)
#     5.times do
#       user = group.students.create!(name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::Internet.password, type: Faker::Number.between(0, 1))
#     end
# end

6.times do
  user = User.create!(name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::Internet.password, character: Faker::Boolean.boolean.to_s)
end

6.times do
  presentation = Presentation.create!(title: Faker::Book.title, description: Faker::Lorem.paragraph)
end

users = User.all
presentations = Presentation.all

10.times do
  user = users.sample
  presentation = presentations.sample
  survey = Survey.create!(rating: Faker::Number.between(from: 1, to: 10), comment: Faker::Lorem.sentence, student: user, presentation: presentation)
end


