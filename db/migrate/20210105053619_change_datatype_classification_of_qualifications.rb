class ChangeDatatypeClassificationOfQualifications < ActiveRecord::Migration[5.2]
  def change
    change_column :qualifications, :classification, :string
  end
end
