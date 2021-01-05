class Admins::QualificationsController < ApplicationController

  def index
    @qualifications = Qualification.all   #.page(params[:page]).per(10)
  end

  def new
    @qualification = Qualification.new
  end

  def show
    @qualification = Qualification.find(params[:id])
  end

  def create
    @qualification = Qualification.new(qualification_params)
    if @qualification.save
      redirect_to admins_qualification_path(@qualification), notice: "資格が新しく登録されました。"
    else
      render 'new'
    end
  end

  def edit
    @qualification = Qualification.find(params[:id])
  end

  def update
    @qualification = Qualification.find(params[:id])
    if @qualification.update(qualification_params)
      redirect_to admins_qualification_path(@qualification)
    else
      render 'edit'
    end
  end

  def destroy
    @qualification = Qualification.find(params[:id]).destroy
    redirect_to admins_qualifications_path
  end


  private

  def qualification_params
    params.require(:qualification).permit(:name, :body, :genre_id, :classification)
  end

end
