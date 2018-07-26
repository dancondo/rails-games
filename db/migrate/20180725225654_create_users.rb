class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.text :description
      t.string :profile_image

      t.timestamps
    end
  end
end
