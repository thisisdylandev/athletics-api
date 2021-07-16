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

sports_list = [
  "soccer",
  "volleyball",
  "football",
  "rugby"
]

workouts_list = [
  {
    name: "Womens Beginner Soccer",
    sport: "soccer",
    equipment: [
      "band",
      "box"
    ]
  },
  {
    name: "Womens Intermediate Soccer",
    sport: "soccer",
    equipment: [
      "band",
      "box",
      "squat rack"
    ]
  },
  {
    name: "Womens Advanced Soccer",
    sport: "soccer",
    equipment: [
      "band",
      "box",
      "squat rack",
      "medicine ball"
    ]
  },
  {
    name: "Mens Beginner Soccer",
    sport: "soccer",
    equipment: [
      "barbell",
      "dumbbell"
    ]
  },
  {
    name: "Mens Intermediate Soccer",
    sport: "soccer",
    equipment: [
      "barbell",
      "dumbbell",
      "squat rack"
    ]
  },
  {
    name: "Mens Advanced Soccer",
    sport: "soccer",
    equipment: [
      "barbell",
      "dumbbell",
      "squat rack",
      "incline bench"
    ]
  },
  {
    name: "Womens Beginner Volleyball",
    sport: "volleyball",
    equipment: [
      "medicine ball",
      "kettlebell"
    ]
  },
  {
    name: "Womens Intermediate Volleyball",
    sport: "volleyball",
    equipment: [
      "medicine ball",
      "kettlebell",
      "stability ball"
    ]
  },
  {
    name: "Womens Advanced Volleyball",
    sport: "volleyball",
    equipment: [
      "medicine ball",
      "kettlebell",
      "stability ball",
      "glute-ham"
    ]
  },
  {
    name: "Mens Beginner Football",
    sport: "football",
    equipment: [
      "barbell",
      "bench"
    ]
  },
  {
    name: "Mens Intermediate Football",
    sport: "football",
    equipment: [
      "barbell",
      "bench",
      "cable machine"
    ]
  },
  {
    name: "Mens Advanced Football",
    sport: "football",
    equipment: [
      "barbell",
      "bench",
      "cable machine",
      "lat pulldown"
    ]
  },
  {
    name: "Womens Beginner Rugby",
    sport: "rugby",
    equipment: [
      "band",
      "dumbbell"
    ]
  },
  {
    name: "Womens Intermediate Rugby",
    sport: "rugby",
    equipment: [
      "band",
      "dumbbell",
      "stability ball"
    ]
  },
  {
    name: "Womens Advanced Rugby",
    sport: "rugby",
    equipment: [
      "band",
      "dumbbell",
      "stability ball",
      "lat pulldown"
    ]
  },
  {
    name: "Men Beginner Rugby",
    sport: "rugby",
    equipment: [
      "squat rack",
      "pullup bar"
    ]
  },
  {
    name: "Men Intermediate Rugby",
    sport: "rugby",
    equipment: [
      "squat rack",
      "pullup bar",
      "glute-ham"
    ]
  },
  {
    name: "Men Advanced Rugby",
    sport: "rugby",
    equipment: [
      "squat rack",
      "pullup bar",
      "glute-ham",
      "cable machine"
    ]
  }
]

equipment_list.each do |name|
  Equipment.create(name: name)
end

sports_list.each do |name|
  Sport.create(name: name)
end

workouts_list.each do |workout|
  workout_sport = Sport.find_by(name: workout[:sport])
  new_workout = Workout.create(name: workout[:name], sport: workout_sport)
  workout[:equipment].each do |equipment|
    equip = Equipment.find_by(name: equipment)
    WorkoutEquipment.create(workout: new_workout, equipment: equip)
  end
end
