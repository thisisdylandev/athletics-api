require "rails_helper"

RSpec.describe Equipment, type: :model do
  it "is valid with valid attributes" do
    new_equipment = FactoryBot.build(:equipment)
    expect(new_equipment).to be_valid
  end
  it "is not valid without a name" do
    bad_equipment = Equipment.new(name: nil)
    expect(bad_equipment).to_not be_valid
  end
end
