class Admins::HomesController < ApplicationController

  before_action :authenticate_admin!

  def top
    @announces = Announce.all.page(params[:page]).per(5).order(created_at: "DESC")
    @stories = Story.all.order(created_at: "DESC").limit(5)
    @customers = Customer.order(created_at: "DESC").limit(5)
    @qualifications = Qualification.all.order(created_at: "DESC").limit(10)
    @genres = Genre.all.order(created_at: "DESC").limit(10)
  end
end
