# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  cost        :integer
#  counter     :integer
#  description :string
#  name        :string
#  number      :integer
#  power       :integer
#  tags        :string
#  trigger     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
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
