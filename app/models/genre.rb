class Genre < ApplicationRecord
  
  has_many :qualifications, dependent: :destroy
  
end
