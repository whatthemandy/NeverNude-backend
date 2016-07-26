require 'spec_helper'

describe Section do
  it { should have_many(:items) }
  it { should validate_presence_of(:name) }
end
