FactoryGirl.define do
  factory :student do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    birthdate  { Faker::Date.between(120.years.ago, 5.years.ago) }
  end
end
