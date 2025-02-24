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
class GameSet < ApplicationRecord
end
