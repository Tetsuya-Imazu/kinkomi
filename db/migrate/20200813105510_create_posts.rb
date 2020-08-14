class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.text :image
      t.text :video

      t.timestamps
    end
  end
end
