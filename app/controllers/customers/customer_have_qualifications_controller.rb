class Customers::CustomerHaveQualificationsController < ApplicationController

  def create
    @have_qualification = CustomerHaveQualification.new
    @qualification = Qualification.find(params[:qualification_id])
    @have_qualification.qualification_id = @qualification.id
    @have_qualification.customer_id = current_customer.id
    @have_qualification.save
    redirect_to edit_customers_customer_path(@have_qualification.customer)
  end

  def destroy
    qualification = Qualification.find(params[:id])
    customer = current_customer
    CustomerHaveQualification.find_by(customer_id: customer.id, qualification_id: qualification.id).destroy
    redirect_to edit_customers_customer_path(customer)
  end

end
