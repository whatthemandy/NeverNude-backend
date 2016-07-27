require 'spec_helper'

describe Outfit do
  it { should belong_to(:user) }
  it { should have_many(:outfits_items) }
  it { should have_many(:items) }
  it { should validate_presence_of(:user_id) }
end
