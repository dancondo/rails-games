class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.string :image_url
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
