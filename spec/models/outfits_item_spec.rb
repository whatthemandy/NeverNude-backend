require 'spec_helper'

describe OutfitsItem do
  it { should belong_to(:outfit) }
  it { should belong_to(:item) }
end
