class ChangeDataSexToCustomer < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :sex, :string
  end
end
