require "rails_helper"

RSpec.describe Workout, type: :model do
  it "is valid with valid attributes" do
    new_workout = FactoryBot.build(:workout)
    expect(new_workout).to be_valid
  end
  it "is not valid without a name" do
    no_name = Workout.new(name: nil)
    expect(no_name).to_not be_valid
  end
  it "is not valid without a sport" do
    no_sport = Workout.new(name: "Mens Beginner Rugby")
    expect(no_sport).to_not be_valid
  end
end
