json.array! @workouts do |workout|
  json.id workout.id
  json.name workout.name
  json.sport do
    json.name workout.sport.name
    json.id workout.sport.id
  end
  json.required_equipment workout.workout_equipments do |workout_equipment|
    json.name workout_equipment.equipment.name
    json.id workout_equipment.equipment.id
  end
end
