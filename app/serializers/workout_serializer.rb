# Using custom serializer to have JSON return match requirements
# Example:
# {
#   id: 15,
#   name: ‘Womens Intermediate Soccer’,
#   sport: { name: ‘Soccer’, id: 29 } ,
#   required_equipment: [ { name: ‘Bench’, id: 1}], { name:’Dumbell’, id: 7 }, { name: ‘Barbell’, id: 14}]
# }

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :sport, :required_equipment

  def sport
    {
      name: object.sport.name,
      id: object.sport.id
    }
  end

  def required_equipment
    object.workout_equipments.map do |workout_equipment|
      {
        name: workout_equipment.equipment.name,
        id: workout_equipment.equipment.id
      }
    end
  end
end
