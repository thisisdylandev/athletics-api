require "faker"

FactoryBot.define do
  factory :workout do
    name { Faker::Games::Pokemon.name }
    sport
  end
end
