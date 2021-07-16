class WorkoutsController < ApplicationController
  # GET /workouts or /workouts.json
  def index
    @workouts = Workout.all
  end

  # GET /workout or /workout.json
  def show
    logger.debug params
    render json: params
  end

  private

  # Only allow a list of trusted parameters through.
  def workout_params
    params.require(:workout).permit(:sport, :equipment)
  end
end
