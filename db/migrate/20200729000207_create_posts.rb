class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :date
      t.text :image_url
      t.text :content

      t.timestamps
    end
  end
end
