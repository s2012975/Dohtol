class ChangeCategoryOfAnnounces < ActiveRecord::Migration[5.2]
  def change
    change_column :announces, :category, :string
  end
end
