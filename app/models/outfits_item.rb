class OutfitsItem < ApplicationRecord
  belongs_to :outfit
  belongs_to :item

  validates :outfit_id, :item_id, presence: true
end
