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

RSpec.describe Card, type: :model do
  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:number).of_type(:integer) }
  it { is_expected.to have_db_column(:cost).of_type(:integer) }
  it { is_expected.to have_db_column(:power).of_type(:integer) }
  it { is_expected.to have_db_column(:tags).of_type(:string) }
  it { is_expected.to have_db_column(:counter).of_type(:integer) }
  it { is_expected.to have_db_column(:trigger).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:string) }
end
