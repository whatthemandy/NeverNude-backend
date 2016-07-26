require 'spec_helper'

describe Tag do
  it { should belong_to(:user) }
  it { should have_many(:tags_items) }
  it { should have_many(:items) }
  it { should validate_presence_of(:name) }
end
