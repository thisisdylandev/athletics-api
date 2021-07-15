require "rails_helper"

RSpec.describe "equipment/show", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
