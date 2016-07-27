class TagsItem < ApplicationRecord
  belongs_to :tag
  belongs_to :item

  validates :tag_id, :item_id, presence: :true
end
