class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :customer_id, null: false
      t.integer :story_id, null: false
      t.float :star
      t.timestamps
    end
  end
end
