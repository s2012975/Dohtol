class Customers::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @post_comment = PostComment.new
  end

  def index
  end

  def edit
  end

  def update
  end

  def comfirm
  end

  def destroy
  end
end
