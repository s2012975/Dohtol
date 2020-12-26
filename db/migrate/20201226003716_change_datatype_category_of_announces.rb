class ChangeDatatypeCategoryOfAnnounces < ActiveRecord::Migration[5.2]
  def change
    change_column_null :announces, :category, false
    change_column_null :announces, :title, false
    change_column_null :announces, :body, false
  end
end
