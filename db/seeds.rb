# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding the database..."

# Initialize Users
users = {
  :admin => User.create(name: 'Dalton Boll', email: 'daltonboll@gmail.com', password: 'password', role: 0),
  :user1 => User.create(name: 'John Doe', email: 'jdoe@gmail.com', password: 'password')
}


# Initialize Tutorials
keyboard_text = "Here's some text on how to use the keyboard properly!\nMore to come."
keyboard_title = "How to properly use the keyboard"
windows8_text = "Let's dive right into Windows 8!\nMore coming soon."
windows8_title = "Introduction to Windows 8"

tutorials = {
  :keyboard => Tutorial.create(title: keyboard_title, content: keyboard_text, published: Time.now),
  :windows8 => Tutorial.create(title: windows8_title, content: windows8_text, published: Time.now),
}


# Initialize Categories
general_description = "Anything and everything!"
windows8_description = "All things Windows 8"

categories = {
  :general => Category.create(name: 'General', description: general_description),
  :windows8 => Category.create(name: 'Windows 8', description: windows8_description)
}


# Initialize Tags
tags = {
  :intro => Tag.create(text: 'Intro'),
  :windows8 => Tag.create(text: 'Windows 8'),
  :hardware => Tag.create(text: 'Hardware'),
  :operating_systems => Tag.create(text: 'Operating Systems'),
}


# Initialize Videos
keyboard_url = 'https://www.youtube.com/watch?v=mWcPA5_8RnM'
keyboard_description = 'A video that shows you how to properly use the keyboard.'
windows8_url = 'https://www.youtube.com/watch?v=_wAlVz3tJvw'
windows8_description = 'A video that gives you an introduction to Windows 8.'

videos = {
  :keyboard => Video.create(url: keyboard_url, title: keyboard_title, description: keyboard_description),
  :windows8 => Video.create(url: windows8_url, title: windows8_title, description: windows8_description)
}


# Initialize Comments
keyboard_comments = {
  :comment1 => Comment.create(name: 'Jenny Barnes', email: 'jbarnes@gmail.com', text: 'Hello from Jenny!'),
  :comment2 => Comment.create(name: 'Alex Warner', email: 'awarner@gmail.com', text: 'Just learning how to use the keyboard!')
}

windows8_comments = {
  :comment1 => Comment.create(name: 'Jeffrey Daniels', email: 'jdaniels@gmail.com', text: 'I like Windows 7 better!'),
  :comment2 => Comment.create(name: 'Tanner Richards', email: 'trichards@gmail.com', text: 'Loving the tutorial :)')
}


# ASSIGN RELATIONSHIPS
admin = users[:admin]
keyboard_tutorial = tutorials[:keyboard]
windows8_tutorial = tutorials[:windows8]

# Set admin as the author for each tutorial
tutorials.each do |name, tutorial|
  tutorial.user = admin
  tutorial.save
end

# Set Tutorial Categories
general_cat = categories[:general]
general_cat.tutorials << keyboard_tutorial
general_cat.save
windows8_cat = categories[:windows8]
windows8_cat.tutorials << windows8_tutorial
windows8_cat.save

# Set Tutorial Tags
keyboard_tutorial.tags << tags[:intro]
keyboard_tutorial.save
keyboard_tutorial.tags << tags[:hardware]
keyboard_tutorial.save
windows8_tutorial.tags << tags[:windows8]
windows8_tutorial.save
windows8_tutorial.tags << tags[:operating_systems]
windows8_tutorial.save

# Set Tutorial Videos
keyboard_tutorial.video = videos[:keyboard]
keyboard_tutorial.save
windows8_tutorial.video = videos[:windows8]
windows8_tutorial.save

# Set Tutorial Comments
keyboard_comments.each do |key, comment|
  comment.tutorial = keyboard_tutorial
  comment.save
end

windows8_comments.each do |key, comment|
  comment.tutorial = windows8_tutorial
  comment.save
end