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
    name { Faker::JapaneseMedia::OnePiece.character }
    description { Faker::JapaneseMedia::OnePiece.akuma_no_mi }
    number { Faker::Number.digit }
    power { 5000 }
    tags { "Supernovas, Straw Hat Crew" }
    trigger { nil }
  end
end
