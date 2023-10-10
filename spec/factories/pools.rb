FactoryBot.define do
  factory :pool do
    sequence(:name) { |n| "pool #{n}" }
    description { "desc" }
    locked_at { 1.week.from_now }
  end
end
