class Genre < ApplicationRecord

  has_many :qualifications, dependent: :destroy
  validates :name, presence: true
end
