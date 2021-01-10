class Customers::CustomersController < ApplicationController

    before_action :authenticate_customer!, only: [:edit, :update]

    # comfirmとdestroyも含めたい
    before_action :ensure_correct_customer, only: [:update, :edit]

  def show
    @customer = Customer.find(params[:id])
    @post_comment = PostComment.new
    @stories = Story.where(customer_id: @customer).limit(5)
  end

  def index
    @q = Customer.ransack(params[:q])
    @customers = @q.result(distinct: true)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    if @customer.update(customer_params)
      redirect_to edit_customers_customer_path(@customer)
    else
      render "edit"
    end
  end

  def destroy
    @customer.destroy
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:profile_image, :nick_name, :introduction)
  end

  # destroyも含めたい
  def ensure_correct_customer
    @customer = Customer.find(params[:id])
    unless @customer == current_customer
      redirect_to customers_customer_path(current_customer)
    end
  end

  def search_params
    params.require(:q).permit!
  end

end
