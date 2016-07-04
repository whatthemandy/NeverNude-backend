class Tag < ApplicationRecord
  belongs_to :user
  has_many   :tags_items
  has_many   :items, through: :tags_items

  validates :name, presence: true, uniqueness: true
end
