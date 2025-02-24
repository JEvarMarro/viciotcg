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
    name { "MyString" }
    release_date { "2025-02-24" }
  end
end
