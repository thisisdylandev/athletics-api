require "faker"

FactoryBot.define do
  factory :sport do
    name { Faker::Games::Zelda.game }
  end
end
