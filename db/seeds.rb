# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clean DB"
# Bookmark.destroy_all
# Message.destroy_all
# Review.destroy_all
Booking.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all
puts "DB cleaned"

p "Seeding database..."
puts "Create users"

florian = User.create(username: "Florian", first_name: "Florian", last_name: "Florian", email: "florian@wastemarket.lol", password: "secret", address: "Rue Gabriel Dedieu, Lormont")
patricia = User.create(username: "Patricia", first_name: "Patricia", last_name: "Patricia", email: "patricia@wastemarket.lol", password: "secret", address: "Esplanade des Antilles, Pessac")
jerome = User.create(username: "Jérôme", first_name: "Jérôme", last_name: "Jérôme ", email: "jerome@wastemarket.lol", password: "secret", address: "Rue Calixte-Camelle, Bègles")
mathieu = User.create(username: "Mathieu", first_name: "Mathieu", last_name: "Mathieu", email: "mathieu@wastemarket.lol", password: "secret", address: "Rue Sainte Catherine, Bordeaux")

puts "Users created"

puts "Creating categories ..."

music = Category.create!(name: "music")
video = Category.create!(name: "video")
board_games = Category.create!(name: "board games")
video_games = Category.create!(name: "video games")
books = Category.create!(name: "books")

puts "Categories created"

puts "creating products ..."

Product.create(name: "Mammal Hands - Captured Spirt", description: "A hand made by a mammal", price: 10, details: "Vinyl, good condition", category: music, user: florian)
Product.create(name: "Harry Potter 1 - The Philosopher's Stone", description: "A book about a wizard", price: 10, details: "Hardcover, good condition", category: books, user: patricia)
Product.create(name: "Interstellar", description: "A movie about a space ship", price: 10, details: "DVD, good condition", category: video, user: jerome)
Product.create(name: "Tic-Tac-Toe", description: "A board game", price: 10, details: "Good condition", category: board_games, user: mathieu)
Product.create(name: "Super Mario Bros", description: "A video game", price: 10, details: "Good condition", category: video_games, user: patricia)

puts "Products created"
