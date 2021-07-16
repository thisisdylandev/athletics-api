class Workout < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :sport
  belongs_to :sport
  has_many :workout_equipments

  # def as_json(options={})
  #   super(:except => [:created_at, :updated_at, :sport_id],
  #     :include => {
  #       :sport => { :only => [:name, :id] },
  #       :workout_equipments
  #     }
  #   )
  # end
end
