FactoryBot.define do
  factory :comment do
    comment { "MyText" }
    user { nil }
    topic { nil }
  end
end
