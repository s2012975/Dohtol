class ChangeDatatypeIntroductionOfCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :customers, :introduction, true
  end
end
