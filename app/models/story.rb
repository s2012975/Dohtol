class Story < ApplicationRecord

  has_many :likes, dependent: :destroy
  has_many :liked_customer, through: :likes, source: :customer

  belongs_to :customer
  belongs_to :qualification

  def liked_by?(customer)
    likes.where(customer_id: customer.id).exists?
  end

end
