require 'spec_helper'

describe Outfit do
  it { should belong_to(:user) }
  it { should have_many(:outfits_items) }
  it { should have_many(:items) }
end
