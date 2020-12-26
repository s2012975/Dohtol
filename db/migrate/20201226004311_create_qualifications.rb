class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
