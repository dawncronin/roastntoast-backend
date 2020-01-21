class CreatePictureLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_likes do |t|
      t.integer :picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
