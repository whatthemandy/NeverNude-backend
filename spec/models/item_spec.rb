require 'spec_helper'

describe Item do
  it { should have_many(:outfits_items) }
  it { should have_many(:outfits) }
  it { should have_many(:tags_items) }
  it { should have_many(:tags) }
  it { should belong_to(:user) }
  it { should belong_to(:section) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:section_id) }
  it { should validate_presence_of(:image) }
end
