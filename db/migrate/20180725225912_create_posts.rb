class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content
      t.string :topic

      t.timestamps
    end
  end
end
