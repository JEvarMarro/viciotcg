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
class CardType::Event < Card
  validates :counter, :power, absence: true
end
