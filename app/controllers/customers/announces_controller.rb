class Customers::AnnouncesController < ApplicationController

  def index
    @announces = Announce.all
  end

  def new
    @announce = Announce.new
  end

end
