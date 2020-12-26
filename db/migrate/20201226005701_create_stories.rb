class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :customer_id, null: false
      t.integer :qualification_id, null: false
      t.string :title, null: false
      t.integer :study_time, null: false
      t.string :reason, null: false
      t.text :body, null: false
      t.text :books, null: false
      t.float :rate

      t.timestamps
    end
  end
end
