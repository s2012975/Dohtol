class ChangeDatatypeProfileImageIdOfCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :customers, :profile_image_id, true
  end
end
