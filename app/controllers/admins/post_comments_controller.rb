class Admins::PostCommentsController < ApplicationController

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
