class Workout < ApplicationRecord
  has_one :sport
  has_many :workout_equipments
end
