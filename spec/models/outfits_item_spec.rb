require 'spec_helper'

describe OutfitsItem do
  it { should belong_to(:outfit) }
  it { should belong_to(:item) }
  it { should validate_presence_of(:outfit_id) }
  it { should validate_presence_of(:item_id) }
end
