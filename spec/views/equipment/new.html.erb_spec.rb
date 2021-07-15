require "rails_helper"

RSpec.describe "equipment/new", type: :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      name: "MyString"
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do
      assert_select "input[name=?]", "equipment[name]"
    end
  end
end
