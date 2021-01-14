class Customers::QualificationsController < ApplicationController
  def index
    # ransack用
    @q = Qualification.ransack(params[:q])
    @qualifications = @q.result(distinct: true)

    i = @qualifications.count
    n = params[:sort].to_i
    case n
    when 1..8
      @genre_name = Genre.find(n).name
      @qualifications = Qualification.where(genre_id: n).page(params[:page]).per(10)
    else
      @genre_name = "資格"
      @qualifications = Qualification.all.page(params[:page]).per(10)
    end
  end

  def show
    @qualification = Qualification.find(params[:id])
    @stories = @qualification.stories.page(params[:page]).per(10)
  end

  private

  def search_params
    params.require(:q).permit!
  end

end
