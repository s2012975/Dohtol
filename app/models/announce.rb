class Announce < ApplicationRecord

  validates :category,  presence: true, length: { maximum:20 }
  validates :title, presence: true
  validates :body, presence: true, length: { maximum:20 }

end
