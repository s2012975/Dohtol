class Story < ApplicationRecord

  has_many :likes, dependent: :destroy
  has_many :liked_customer, through: :likes, source: :customer

  belongs_to :customer
  belongs_to :qualification

  validates :title, presence: true
  validates :study_time, presence: true
  validates :reason, presence: true
  validates :body, presence: true
  validates :books, presence: true

  def liked_by?(customer)
    likes.where(customer_id: customer.id).exists?
  end

end
