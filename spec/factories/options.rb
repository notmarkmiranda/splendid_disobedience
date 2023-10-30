FactoryBot.define do
  factory :option do
    question
    body { Faker::Sports::Basketball.team }
  end
end
