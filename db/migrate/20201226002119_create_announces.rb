class CreateAnnounces < ActiveRecord::Migration[5.2]
  def change
    create_table :announces do |t|
      t.integer :category
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
