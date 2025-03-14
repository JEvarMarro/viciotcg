# == Schema Information
#
# Table name: game_sets
#
#  id           :bigint           not null, primary key
#  name         :string
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :game_set do
    name { Faker::JapaneseMedia::OnePiece.akuma_no_mi }
    release_date { Faker::Date.backward(days: 3) }
  end
end
