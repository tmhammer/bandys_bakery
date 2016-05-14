require 'rails_helper'

describe Dessert do
  it { is_expected.to have_and_belong_to_many(:dessert_types) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:ingredients) }
end