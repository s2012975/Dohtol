class Customers::QualificationsController < ApplicationController
  def index
    # ransack用
    @q = Qualification.ransack(params[:q])
    @qualifications = @q.result(distinct: true)

    i = @qualifications.count
    n = params[:sort].to_i
    case n
    when 1..i
      @genre_name = Genre.find(n).name
      @qualifications = Qualification.where(genre_id: n)
    else
      @genre_name = "資格"
      @qualifications = Qualification.all
    end
  end

  def show
    @qualification = Qualification.find(params[:id])
  end

  private

  def search_params
    params.require(:q).permit!
  end

end
