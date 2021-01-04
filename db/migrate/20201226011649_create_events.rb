class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :customer_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :disp_flg
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.string :allday

      t.timestamps
    end
  end
end
