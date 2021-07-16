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
    workouts = []

    params[:equipment].each do |equipment|
      users_equipment.push(Equipment.where(name: equipment))
    end

    users_equipment.each do |equipment|
      user_workout_equipments.push(WorkoutEquipment.where(equipment: equipment))
    end

    user_workout_equipments.each do |workout_equipment|
      logger.error workout_equipment
      # workouts.push(Workout.where(id: workout_equipment.workout_id))
    end
    
    render json: user_workout_equipments
  end

  private

  # Only allow a list of trusted parameters through.
  def workout_params
    params.require(:workout).permit(:sport, :equipment)
  end
end
