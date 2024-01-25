# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

categories = ["Engineering", "Marketing", "Design", "Sales", "Customer Service"]
locations = ["New York", "San Francisco", "Berlin", "Tokyo", "London", "Paris", "Sydney", "Toronto", "Singapore"]
100.times do
  Job.create!(
    title: Faker::Job.title,
    description: Faker::Lorem.sentence(word_count: 15),
    category: categories.sample,
    location: locations.sample,
    remote: [true, false].sample,
    commitment: Job.commitments.keys.sample
  )
end
