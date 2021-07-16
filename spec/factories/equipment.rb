require "faker"

FactoryBot.define do
  factory :equipment do
    name { Faker::Games::Zelda.item }
  end
end
