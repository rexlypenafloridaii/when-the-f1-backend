# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "Lewis Hamilton", email: "lewis@example.com", password: "password", timezone: "Central")
User.create(name: "Max Verstappen", email: "max@example.com", password: "password", timezone: "Pacific")

Race.create(location: "Monaco", date: "January 1", time: "12 p.m.")
Race.create(location: "Spa", date: "April 1", time: "3 p.m.")

Stage.create(name: "Free Practice 1", location: "Monaco", date: "January 1", time: "12 p.m.", race_id: 1)
Stage.create(name: "Race", location: "Spa", date: "April 3", time: "3 p.m.", race_id: 2)

UserRace.create(user_id: 1, race_id: 1)
UserRace.create(user_id: 2, race_id: 2)
