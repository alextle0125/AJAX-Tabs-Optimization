FactoryGirl.define do
  factory :phase do
    sequence(:name) {|i| "phase-#{i}" }
  end
  factory :unit do
    number { "unit-#{rand(1..10)}" }
    phase
  end
  factory :challenge do
    name { "challenge name: #{Faker::Lorem.word}" }
    description { Faker::Lorem.paragraphs(100).join(" ") }
    unit
  end
end
