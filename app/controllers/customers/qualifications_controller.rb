class Customers::QualificationsController < ApplicationController
  def index
    @q = Qualification.ransack(params[:q])
    @qualifications = @q.result(distinct: true)
  end

  def show
    @qualification = Qualification.find(params[:id])
  end

  private

  def search_params
    params.require(:q).permit!
  end

end
