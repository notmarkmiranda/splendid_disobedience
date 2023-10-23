FactoryBot.define do
  factory :question do
    pool 
    body { Faker::Quote.matz  }
    description { Faker::Quote.mitch_hedberg }
  end
end
