class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
