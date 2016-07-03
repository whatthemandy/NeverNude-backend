class AddImageToItems < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :items, :image
  end

  def self.down
    remove_attachment :items, :image
  end
end
