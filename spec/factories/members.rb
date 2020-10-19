FactoryBot.define do
  factory :member do
    name                        {"サンプル太郎"}
    nickname                    {"sampletaro"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password                    {"00000000"}
    password_confirmation       {"00000000"}
  end
end