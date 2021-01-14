class AddIndexCustomerStudyQualificationsCustomerId < ActiveRecord::Migration[5.2]
  def change
    add_index :customer_study_qualifications, [:customer_id, :qualification_id], unique: true, name: "study_qualifications_on_customer_id_and_qualification_id"
  end
end
