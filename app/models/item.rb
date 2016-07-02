class Item < ApplicationRecord
  belongs_to :user
  belongs_to :section

  # validates :paperclip?
end
