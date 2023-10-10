FactoryBot.define do
  factory :membership do
    pool
    user
    active { true }

    trait :member do
      role { 0 }
    end

    trait :admin do
      role { 1 }
    end

    trait :superadmin do
      role { 2 }
    end
  end
end
