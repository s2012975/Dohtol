class CreateCustomerHaveQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_have_qualifications do |t|
      t.integer :customer_id, null: false
      t.integer :qualification_id, null: false

      t.timestamps
    end
  end
end
