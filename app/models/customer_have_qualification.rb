class CustomerHaveQualification < ApplicationRecord

    belongs_to :customer
    belongs_to :qualification

    validates :customer_id, uniqueness: { scope: :qualification_id }
    validates :qualification_id, presence: true
    validates :customer_id, presence: true

end
