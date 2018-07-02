class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :user_id
      t.integer :book_id
      t.integer :post_id
      t.timestamps
    end
  end
end