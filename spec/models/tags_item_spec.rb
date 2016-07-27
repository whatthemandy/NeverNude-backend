require 'spec_helper'

describe TagsItem do
  it { should belong_to(:tag) }
  it { should belong_to(:item) }
  it { should validate_presence_of(:tag_id) }
  it { should validate_presence_of(:item_id) }
end
