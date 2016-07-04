class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table   :items do |t|
      t.integer    :user_id, null: false
      t.integer    :section_id, null: false
      t.attachment :image, null: false

      t.timestamps(null: false)
    end
  end
end
