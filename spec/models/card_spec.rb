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
