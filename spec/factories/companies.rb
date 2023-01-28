FactoryBot.define do
  factory :company do
    name { Faker::Company.name.split('-').join(' ') }
  end
end
