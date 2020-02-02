class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :category
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end