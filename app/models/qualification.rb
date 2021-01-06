class Qualification < ApplicationRecord

  has_many :customer_have_qualifications, dependent: :destroy
  has_many :customer_study_qualifications, dependent: :destroy
  belongs_to :genre
  has_many :stories, dependent: :destroy

end
