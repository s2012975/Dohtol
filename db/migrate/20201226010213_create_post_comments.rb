class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.integer :send_customer_id, null: false
      t.integer :given_customer_id, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
