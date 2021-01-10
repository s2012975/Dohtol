class Customers::CustomerStudyQualificationsController < ApplicationController

  def create
    @customer_study_qualification.qualification = Qualification.find(qualification_params)
    @customer_study_qualification.customer = current_customer
    @customer_study_qualification.save

  end

  def destory
  end

  private

    def qualification_params
      params.require(:qualification).permit(:qualification_id)
    end

end
