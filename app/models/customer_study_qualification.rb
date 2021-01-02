class CustomerStudyQualification < ApplicationRecord

  belongs_to :customer
  belongs_to :qualification

end
