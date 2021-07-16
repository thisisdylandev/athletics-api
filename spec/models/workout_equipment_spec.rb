require "rails_helper"

RSpec.describe WorkoutEquipment, type: :model do
  it "is valid with valid attributes" do
    new_workout_equipment = FactoryBot.build(:workout_equipment)
    expect(new_workout_equipment).to be_valid
  end
  it "is not valid without a workout" do
    no_workout = WorkoutEquipment.new(equipment: FactoryBot.build(:equipment))
    expect(no_workout).to_not be_valid
  end
  it "is not valid without equipment" do
    no_equipment = WorkoutEquipment.new(workout: FactoryBot.build(:workout))
    expect(no_equipment).to_not be_valid
  end
end
