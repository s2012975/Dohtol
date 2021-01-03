class Customers::PostCommentsController < ApplicationController

  def create
    given_customer = Customer.find(params[:customer_id])
    comment = current_customer.send_messages.new(post_comment_params)
    comment.given_customer_id = given_customer.id
    comment.save
    redirect_to customers_customer_path(given_customer)
  end

  def destroy

    PostComment.find_by(id: params[:id], given_customer_id: params[:customer_id]).destroy
    redirect_to customers_customer_path(params[:customer_id])
  end

  private
    def post_comment_params
      params.require(:post_comment).permit(:body)
    end
end
