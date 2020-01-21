class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :img_url
      t.string :roast_bio
      t.string :toast_bio
      t.integer :user_id

      t.timestamps
    end
  end
end
