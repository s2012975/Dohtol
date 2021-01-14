class Customers::PostCommentsController < ApplicationController

  before_action :authenticate_customer!

  def create
    @customer = Customer.find(params[:customer_id])
    @comment = PostComment.new(post_comment_params)
    @comment.given_customer_id = @customer.id
    @comment.send_customer_id = current_customer.id
    @comment.save
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    post_comment = @customer.given_messages.find(params[:id])
    post_comment.destroy
  end

  private
    def post_comment_params
      params.require(:post_comment).permit(:body)
    end
end
