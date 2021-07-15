# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

equipment_list = [
  "band",
  "barbell",
  "bench",
  "box",
  "cable machine",
  "dumbbell",
  "glute-ham",
  "incline bench",
  "lat pulldown",
  "medicine ball",
  "pullup bar",
  "squat rack",
  "kettlebell",
  "stability ball"
]

equipment_list.each do |name|
  Equipment.create(name: name)
end
