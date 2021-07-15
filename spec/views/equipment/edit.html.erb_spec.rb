require "rails_helper"

RSpec.describe "equipment/edit", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      name: "MyString"
    ))
  end

  it "renders the edit equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do
      assert_select "input[name=?]", "equipment[name]"
    end
  end
end
