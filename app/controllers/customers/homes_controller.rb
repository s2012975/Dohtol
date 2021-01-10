class Customers::HomesController < ApplicationController
  def top
    @new_stories = Story.all.order(created_at: "DESC").limit(5)
    @popular_stories = Story.includes(:liked_customer).limit(5).sort {|a,b| b.liked_customer.count <=> a.liked_customer.count}
  end

  def about
  end
end
