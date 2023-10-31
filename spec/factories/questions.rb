FactoryBot.define do
  factory :question do
    pool
    body { Faker::Quote.matz }
    description { Faker::Quote.mitch_hedberg }

    factory :question_with_two_options do
      after(:create) do |question|
        %w(dodgers lakers).each do |team|
          create(:option, body: team, question: question)
        end
      end
    end
  end
end
