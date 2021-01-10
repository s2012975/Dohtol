class Admins::RelationshipsController < ApplicationController

  def followings
     customer = Customer.find(params[:customer_id])
     @customers = customer.followings
  end

  def followedes
     customer = Customer.find(params[:customer_id])
     @customers = customer.followedes
  end

end
