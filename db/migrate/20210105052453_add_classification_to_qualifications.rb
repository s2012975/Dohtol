class AddClassificationToQualifications < ActiveRecord::Migration[5.2]
  def change
    add_column :qualifications, :classification, :integer
  end
end
