Rails.application.routes.draw do
  get "/workouts", to: "workouts#index"
  get "/workout", to: "workouts#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
