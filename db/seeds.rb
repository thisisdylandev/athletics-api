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

sports_list = [
  "soccer",
  "volleyball",
  "football",
  "rugby",
]

sports_list.each do |name|
  Sport.create(name: name)
end

workout_name_list = [
  "Womens Beginner Soccer",
  "Womens Intermediate Soccer",
  "Womens Advanced Soccer",
  "Mens Beginner Soccer",
  "Mens Intermediate Soccer",
  "Mens Advanced Soccer",
  "Womens Beginner Volleyball",
  "Womens Intermediate Volleyball",
  "Womens Advanced Volleyball",
  "Mens Beginner Football",
  "Mens Intermediate Football",
  "Mens Advanced Football",
  "Womens Beginner Rugby",
  "Womens Intermediate Rugby",
  "Womens Advanced Rugby",
  "Mens Beginner Rugby",
  "Mens Intermediate Rugby",
  "Mens Advanced Rugby"
]
