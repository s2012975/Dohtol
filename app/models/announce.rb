class Announce < ApplicationRecord

  validates :category,  presence: true
  validates :title, presence: true, length: { maximum:20 }
  validates :body, presence: true, length: { maximum:500 }

end
