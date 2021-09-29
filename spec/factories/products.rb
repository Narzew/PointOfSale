FactoryBot.define do
  factory :product do
    name { Faker::Food.ingredient }
    code { Faker::BarCode.code }
    price { rand(0.01..100.00 }
  end
end
