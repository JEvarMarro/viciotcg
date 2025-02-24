FactoryBot.define do
  factory :card do
    cost { nil }
    counter { nil }
    name { "Roronoa Zoro" }
    description { "[DON!! x1] [Your Turn] All of your Characters gain +1000 power." }
    number { 001 }
    power { 5000 }
    tags { "Supernovas, Straw Hat Crew" }
    trigger { nil }
  end
end
