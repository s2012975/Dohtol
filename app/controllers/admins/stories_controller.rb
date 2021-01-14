class Admins::StoriesController < ApplicationController

  before_action :authenticate_admin!

  def index
  end

  def show
    @story = Story.find(params[:id])
    @customer = @story.customer
    @qualification = Qualification.find(params[:qualification_id])
  end

  def destroy
    @story = Story.find(params[:id]).destroy
    redirect_to admins_qualification_path(@story.qualification)
  end

end
