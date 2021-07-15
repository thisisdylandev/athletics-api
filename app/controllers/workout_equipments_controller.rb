class WorkoutEquipmentsController < ApplicationController
  before_action :set_workout_equipment, only: %i[show edit update destroy]

  # GET /workout_equipments or /workout_equipments.json
  def index
    @workout_equipments = WorkoutEquipment.all
  end

  # GET /workout_equipments/1 or /workout_equipments/1.json
  def show
  end

  # GET /workout_equipments/new
  def new
    @workout_equipment = WorkoutEquipment.new
  end

  # GET /workout_equipments/1/edit
  def edit
  end

  # POST /workout_equipments or /workout_equipments.json
  def create
    @workout_equipment = WorkoutEquipment.new(workout_equipment_params)

    respond_to do |format|
      if @workout_equipment.save
        format.html { redirect_to @workout_equipment, notice: "Workout equipment was successfully created." }
        format.json { render :show, status: :created, location: @workout_equipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workout_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_equipments/1 or /workout_equipments/1.json
  def update
    respond_to do |format|
      if @workout_equipment.update(workout_equipment_params)
        format.html { redirect_to @workout_equipment, notice: "Workout equipment was successfully updated." }
        format.json { render :show, status: :ok, location: @workout_equipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workout_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_equipments/1 or /workout_equipments/1.json
  def destroy
    @workout_equipment.destroy
    respond_to do |format|
      format.html { redirect_to workout_equipments_url, notice: "Workout equipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_workout_equipment
    @workout_equipment = WorkoutEquipment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def workout_equipment_params
    params.require(:workout_equipment).permit(:workout_id, :equipment_id)
  end
end
