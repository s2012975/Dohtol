class Story < ApplicationRecord

  has_many :rates
  belongs_to :customer
  belongs_to :qualification, dependent: :destroy

end
