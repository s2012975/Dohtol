class Customers::LikesController < ApplicationController

  def create
    qualification = Qualification.find(params[:qualification_id])
    story = Story.find(params[:story_id])
    like = current_customer.likes.new(story_id: story.id)
    like.save
    redirect_to customers_qualification_story_path(qualification, story)
  end

  def destroy
    qualification = Qualification.find(params[:qualification_id])
    story = Story.find(params[:story_id])
    like = current_customer.likes.find_by(story_id: story.id)
    like.destroy
    redirect_to customers_qualification_story_path(qualification, story)
  end

end
