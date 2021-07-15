Rails.application.routes.draw do
  resources :workout_equipments
  resources :workouts
  resources :sports
  resources :equipment
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
