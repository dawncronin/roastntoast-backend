class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.boolean :roast
      t.string :text
      t.integer :picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
