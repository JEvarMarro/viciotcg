# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Card.find_or_create_by!(
  cost: nil,
  counter: nil,
  description: "[DON!! x1] [Your Turn] All of your Characters gain +1000 power.",
  name: "Roronoa Zoro",
  number: 001,
  power: 5000,
  tags: "Supernovas, Straw Hat Crew",
  trigger: nil
)

Card.find_or_create_by(
    cost: 2,
    counter: 2000,
    description: "[DON!! x1] [Your Turn] [Once Per Turn] Draw 1 card when your opponent activates an Event.",
    name: "Usopp",
    number: 004,
    power: 3000,
    tags: "Straw Hat Crew",
    trigger: nil
)
