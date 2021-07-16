class WorkoutEquipment < ApplicationRecord
  validates_presence_of :workout
  validates_presence_of :equipment
  belongs_to :workout
  belongs_to :equipment
end
