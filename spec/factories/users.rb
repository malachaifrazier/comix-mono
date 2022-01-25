# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }

    after(:create) do |user|
      user.confirm
      user.add_role(:buyer)
    end

    trait :creator do
      after(:create) do |user|
        user.confirm
        user.add_role(:creator)
      end
    end
  end
end
