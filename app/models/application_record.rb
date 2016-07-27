class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def delete_associated_outfits_items
    self.outfits_items.each {|outfits_item| outfits_item.destroy }
  end

  def delete_associated_tags_items
    self.tags_items.each {|tags_item| tags_item.destroy }
  end

  def delete_associated_outfits_and_tags
    self.delete_associated_outfits_items
    self.delete_associated_tags_items
  end
end
