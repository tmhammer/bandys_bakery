require 'rails_helper'

describe Announcement do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_uniqueness_of(:title) }

  it { is_expected.to validate_presence_of(:body) }
end