class Like < ApplicationRecord
  belongs_to :customer
  belongs_to :story
  validates_uniqueness_of :story_id, scope: :customer_id
end
