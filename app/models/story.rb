class Story < ApplicationRecord

  has_many :likes
  belongs_to :customer
  belongs_to :qualification, dependent: :destroy

end
