puts "Cleaning database..."
Article.destroy_all

puts "Creating 10 articles..."
10.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
end

puts "Done! Created #{Article.count} articles."
