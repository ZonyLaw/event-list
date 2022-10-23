# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "clean database"

Event.destroy_all

Event.create(name: "TiME", details: "How to use TiME to manage project files")
Event.create(name: "Dealing with inflation", details: "How are you cooping with the inflation?")
Event.create(name: "QA", details: "How do you perform QA on your work?")

puts "finished"
