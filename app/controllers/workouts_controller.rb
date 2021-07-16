class WorkoutsController < ApplicationController
  # GET /workouts or /workouts.json
  def index
    @workouts = Workout.all
    respond_to do |format|
      format.json 
    end
  end

  # GET /workout or /workout.json
  def show
    users_equipment = []
    user_workout_equipments = []
    @workouts = []

    Equipment.find_each do |equipment|
      params[:equipment].each do |params_equipment|
        if (equipment.name == params_equipment)
          users_equipment.push(equipment)
        end
      end
    end

    WorkoutEquipment.find_each do |workout_equipment|
      users_equipment.each do |user_equipment|
        if (workout_equipment.equipment == user_equipment)
          user_workout_equipments.push(workout_equipment)
        end
      end
    end

    user_workout_equipments.each do |workout_equipment|
      @workouts.push(Workout.find(workout_equipment.workout.id))
    end

    if (params.has_key?(:sport))
      @workouts.select!{ |workout| workout.sport.name == params[:sport] }
    end
    
    respond_to do |format|
      format.json
    end
  end
end
