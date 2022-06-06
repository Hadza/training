# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = %w[Clothing Food Electronics Other]
days_offset = rand(1..90)

30.times do |i|
  user = User.create(email: "user#{i.to_s}@example.com", password: "password")
  user.update(created_at: Time.now - days_offset.days)
  puts "Created user #{user.email} with created_at #{user.created_at}"
end

User.all.each do |user|
  rand(5..15).times do |j|
    donation = Donation.create(
      name: "Donation #{j.to_s}",
      description: "This is a donation #{j.to_s}",
      category: categories.sample,
      donor_id: user.id
    )
    donation.update(created_at: rand(user.created_at..Time.now))
    puts "Created donation #{donation.name} with created_at #{donation.created_at}"
  end
end
