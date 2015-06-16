# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding the database..."
admin = User.first

# Initialize Tutorials
keyboard_text = "Here's some text on how to use the keyboard properly!\nMore to come."
windows8_text = "Let's dive right into Windows 8!\nMore coming soon."

tutorials = {
  :using_keyboard => Tutorial.create(title: 'How to properly use the keyboard', content: keyboard_text, password: 'password', is_admin: true),
  :windows8_intro => User.create(name: 'Dalton', email: 'dalton@mail.com', password: 'password', is_admin: true),
 }