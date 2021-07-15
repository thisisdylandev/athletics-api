class AddSportToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_reference :workouts, :sport, null: false, foreign_key: true
  end
end
