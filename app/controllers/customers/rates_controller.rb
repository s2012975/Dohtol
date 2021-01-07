class Customers::RatesController < ApplicationController

  def create
    @story = Story.find(params[:story_id])
  end

  def edit
  end

  def destroy
  end

end
