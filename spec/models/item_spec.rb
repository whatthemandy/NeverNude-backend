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

  # it { should have_attached_file(:image) }
  # it { should validate_attachment_presence(:image) }

  # it { should validate_attachment_content_type(:icon).
  #     allowing('image/png', 'image/gif').
  #     rejecting('text/plain', 'text/xml') }

  # it { should validate_attachment_size(:image).
  #               less_than(2.megabytes) }
  # it { should validate_attachment_size(:icon).
  #               greater_than(1024) }
  # it { should validate_attachment_size(:icon).
  #               in(0..100) }
end
