class Sport < ApplicationRecord
  validates_presence_of :name
  has_many :workouts
end
