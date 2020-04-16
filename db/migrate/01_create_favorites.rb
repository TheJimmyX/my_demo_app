class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :photo_id
      t.string :photo_url_small

      t.timestamps
    end
  end
end
