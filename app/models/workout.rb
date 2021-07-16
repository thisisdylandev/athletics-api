class Workout < ApplicationRecord
  belongs_to :sport
  has_many :workout_equipments
end
