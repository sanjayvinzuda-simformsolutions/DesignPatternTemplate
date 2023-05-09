# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i| 
  User.create(first_name: "Test_#{i}", last_name: "Test_#{i}")
end


5.times do |i|
  Post.create(title: 'post', description: 'post description', user: User.find_by(first_name:"Test_#{i}", last_name: "Test_#{i}"))
end