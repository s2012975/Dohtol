class Customers::AnnouncesController < ApplicationController

  def index
    @announces = Announce.all
  end

  def show
    @announce = Announce.find(params[:id])
  end

end
