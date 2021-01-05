class Admins::HomesController < ApplicationController
  def top
    @announces = Announce.all
  end
end
