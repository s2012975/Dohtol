class Customers::StoriesController < ApplicationController

  before_action :authenticate_customer!, only: [:new, :create ,:update, :edit, :destroy]

  def index
    @stories = Story.all   #.page(params[:page]).per(10)
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
    @customer = @story.customer
  end

  def create
    @story = Story.new(story_params)
    @story.qualification_id = Qualification.find(params[:qualification_id]).id
    @story.customer_id = current_customer.id
    if @story.save
      redirect_to customers_qualification_story_path(@story.qualification_id, @story), notice: "体験談が新しく登録されました。"
    else
      render 'new'
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to customers_qualification_story_path(@story)
    else
      render 'edit'
    end
  end

  def destroy
    @story = Story.find(params[:id]).destroy
    redirect_to customers_qualification_path(@story.qualification)
  end

  private

  def story_params
    params.require(:story).permit(:customer_id, :qualification_id, :title, :study_time, :reason, :body, :books)
  end

end
