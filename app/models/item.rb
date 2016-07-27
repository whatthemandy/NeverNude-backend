class Item < ApplicationRecord
  belongs_to :user
  belongs_to :section

  has_many   :outfits_items
  has_many   :outfits, through: :outfits_items
  has_many   :tags_items
  has_many   :tags, through: :tags_items

  has_attached_file :image,
    styles: {
      medium: '300x225',
      large: '400x300'
    },
    storage: :s3,
    s3_credentials: {
      access_key_id: ENV['AWS_KEY'],
      secret_access_key: ENV['AWS_SECRET']
    },
    bucket: 'neverevernude'

  validates :user_id, :section_id, presence: true
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end