require "rails_helper"

RSpec.describe WorkoutEquipmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/workout_equipments").to route_to("workout_equipments#index")
    end

    it "routes to #new" do
      expect(get: "/workout_equipments/new").to route_to("workout_equipments#new")
    end

    it "routes to #show" do
      expect(get: "/workout_equipments/1").to route_to("workout_equipments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/workout_equipments/1/edit").to route_to("workout_equipments#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/workout_equipments").to route_to("workout_equipments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/workout_equipments/1").to route_to("workout_equipments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/workout_equipments/1").to route_to("workout_equipments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/workout_equipments/1").to route_to("workout_equipments#destroy", id: "1")
    end
  end
end
