class CustomerHaveQualification < ApplicationRecord

    belongs_to :customer
    belongs_to :qualification

    validates :customer_id, uniqueness: { scope: :qualification_id }

end
