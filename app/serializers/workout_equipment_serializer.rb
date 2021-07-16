class WorkoutEquipmentSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :workout, serializer: WorkoutSerializer

  # def name
  #   self.object.equipment.name
  # end

  # def id
  #   {
  #     id: self.object.equipment.id
  #   }
  # end
end
