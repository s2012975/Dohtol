class Admins::CustomersController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @customers = Customer.all.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
    @stories = @customer.stories.all
  end
end
