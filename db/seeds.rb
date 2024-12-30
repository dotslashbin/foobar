# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create Users
user1 = User.create!(name: "Alice", email: "alice@example.com")
user2 = User.create!(name: "Bob", email: "bob@example.com")

# Create Profiles
Profile.create!(user: user1, bio: "Software Engineer", birthday: "1990-01-01")
Profile.create!(user: user2, bio: "Designer", birthday: "1992-02-02")

# Create Posts
Post.create!(user: user1, title: "Rails Tips", content: "Use strong parameters!")
Post.create!(user: user1, title: "Active Record Basics", content: "Associations are powerful.")
Post.create!(user: user2, title: "Design Patterns", content: "Understand MVC.")
