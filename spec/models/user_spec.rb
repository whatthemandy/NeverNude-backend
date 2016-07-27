require 'spec_helper'

describe User do
  it { should have_many(:items) }
  it { should have_many(:outfits) }
  it { should have_many(:tags) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
end
