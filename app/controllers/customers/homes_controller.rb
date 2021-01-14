class Customers::HomesController < ApplicationController
  def top
    @new_stories = Story.all.order(created_at: "DESC").limit(5)
    @popular_stories = Story.includes(:liked_customer).limit(5).sort {|a,b| b.liked_customer.count <=> a.liked_customer.count}
    @announces = Announce.all.order(created_at: "DESC").limit(10)
    @news_announces = Announce.where(category: '最新情報').order(created_at: "DESC").limit(10)
    @event_announces = Announce.where(category: 'イベント').order(created_at: "DESC").limit(10)
  end

  def about
  end
end
