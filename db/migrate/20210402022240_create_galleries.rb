class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :user_id, null: false
      t.string :title
      t.string :text, null: false
      t.string :image_id, null: false
      t.string :youtube_url
      t.integer :region
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
