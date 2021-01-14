class Admins::AnnouncesController < ApplicationController

  before_action :authenticate_admin!

  def index
    @announces = Announce.all   #.page(params[:page]).per(10)
  end

  def new
    @announce = Announce.new
  end

  def show
    @announce = Announce.find(params[:id])
  end

  def create
    @announce = Announce.new(announce_params)
    if @announce.save
      redirect_to admins_announce_path(@announce), notice: "お知らせが新しく登録されました。"
    else
      render 'new'
    end
  end

  def edit
    @announce = Announce.find(params[:id])
  end

  def update
    @announce = Announce.find(params[:id])
    if @announce.update(announce_params)
      redirect_to admins_announce_path(@announce)
    else
      render 'edit'
    end
  end

  def destroy
    @announce = Announce.find(params[:id]).destroy
    redirect_to admins_homes_top_path
  end


  private

  def announce_params
    params.require(:announce).permit(:title, :category, :body)
  end


end
