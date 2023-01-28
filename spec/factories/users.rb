FactoryBot.define do
  factory :user do
    company
    email { Faker::Internet.email.split('@')[0] + '@' + company.split(' ').downcase + ['.com', '.net', '.io'].sample }
    password { '123456' }
  end
end
