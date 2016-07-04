class CreateOutfitsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :outfits_items do |t|
      t.integer  :outfit_id, null: false
      t.integer  :item_id, null: false

      t.timestamps(null: false)
    end
  end
end
