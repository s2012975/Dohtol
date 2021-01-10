class Admins::HomesController < ApplicationController
  def top
    @announces = Announce.all.order(created_at: "DESC").limit(5)
    @stories = Story.all.order(created_at: "DESC").limit(5)
    @customers = Customer.order(created_at: "DESC").limit(5)
    @qualifications = Qualification.all
    @genres = Genre.all
  end
end
