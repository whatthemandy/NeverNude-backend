class CreateTagsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_items do |t|
      t.integer  :tag_id, null: false
      t.integer  :item_id, null: false

      t.timestamps(null: false)
    end
  end
end
