class PostComment < ApplicationRecord

  belongs_to :send_customer, class_name: 'Customer'
  belongs_to :given_customer, class_name: 'Customer'

  validates :send_customer_id, presence: true
  validates :given_customer_id, presence: true
  validates :body, presence: true

end
