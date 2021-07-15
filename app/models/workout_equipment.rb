class WorkoutEquipment < ApplicationRecord
  belongs_to :workout
  belongs_to :equipment
end
