# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { name: 'ruby', email: 'ruby@reddit.com' },
  { name: 'thruput', email: 'bad_thruput27@email.com' },
  { name: 'rabbit', email: 'goodrabbit@email.com' },
]

users.each do |user|
  User.create( name: user[:name], email: user[:email])
end

microposts = [
  { content: 'rabbits' },
  { content: 'new micropost 27' },
  { content: 'new micropost 41' }
]

User.all.zip(microposts).each do |user_and_post|
  user = user_and_post.first
  micropost = user_and_post.last

  user.microposts.create(content: micropost[:content])
end
