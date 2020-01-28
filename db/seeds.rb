# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything..."
puts "creating Users..."
claire = User.create!(email:"claire@example.com", password:"aaaaaa")

puts "creating Vocab..."
Vocab.create!(french: "sourcil", native_translation: "eyebrow", starred: true, user: claire)
Vocab.create!(french: "merci", native_translation: "thank you", starred: false, user: claire)
Vocab.create!(french: "narine", native_translation: "nostril", starred: true, user: claire)
puts "creating Tags..."

Tag.create!(name: "body", vocab: Vocab.find_by(french: "sourcil"))
Tag.create!(name: "face", vocab: Vocab.find_by(french: "sourcil"))
Tag.create!(name: "common", vocab: Vocab.find_by(french: "merci"))
Tag.create!(name: "body", vocab: Vocab.find_by(french: "narine"))

puts "done"
