require "rails_helper"

RSpec.describe Sport, type: :model do
  it "is valid with valid attributes" do
    new_sport = FactoryBot.build(:sport)
    expect(new_sport).to be_valid
  end
  it "is not valid without a name" do
    bad_sport = Sport.new(name: nil)
    expect(bad_sport).to_not be_valid
  end
end
