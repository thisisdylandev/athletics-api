require "rails_helper"

RSpec.describe "/workouts", type: :request do
  # Workout. As you add validations to Workout, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  describe "GET /index" do
    it "returns a list of all workouts" do
      workout_list = FactoryBot.create_list(:workout, 20)

      get workouts_url

      expect(response).to be_successful
      expect(response.body).to include(workout_list.to_json)
    end
  end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     workout = Workout.create! valid_attributes
  #     get workout_url(workout)
  #     expect(response).to be_successful
  #   end
  # end
end
