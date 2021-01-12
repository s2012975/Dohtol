class Announce < ApplicationRecord

  validates :category,  presence: true
  validates :title, presence: true
  validates :body, presence: true

end
