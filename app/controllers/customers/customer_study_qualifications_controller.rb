class Customers::CustomerStudyQualificationsController < ApplicationController

  def create
    @study_qualification = CustomerStudyQualification.new
    @qualification = Qualification.find(params[:qualification_id])
    @study_qualification.qualification_id = @qualification.id
    @study_qualification.customer_id = current_customer.id
    @study_qualification.save
    redirect_to edit_customers_customer_path(@study_qualification.customer)
  end

  def destroy
    qualification = Qualification.find(params[:id])
    customer = current_customer
    CustomerStudyQualification.find_by(customer_id: customer.id, qualification_id: qualification.id).destroy
    redirect_to edit_customers_customer_path(customer)
  end

end
