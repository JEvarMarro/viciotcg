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
require 'rails_helper'

RSpec.describe CardType::Event, type: :model do
   it { should validate_absence_of(:counter) }
   it { should validate_absence_of(:power) }
end
