class Workout < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :sport
  belongs_to :sport
  has_many :workout_equipments
end
