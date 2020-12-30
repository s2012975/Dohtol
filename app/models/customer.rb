class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :customer_have_qualifications, dependent: :destroy
  has_many :customer_study_qualifications, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :stories, dependent: :destroy


  # 以下post_commentsの設定

  # 自分がメッセージを送る側の関係性
  has_many :send_messages, class_name: "PostComment", foreign_key: "send_customer_id", dependent: :destroy
  # 自分がメッセージを貰う側の関係性
  has_many :given_messages, class_name: "PostComment", foreign_key: "given_customer_id", dependent: :destroy
  # 送るメッセージ関係を通じて参照→自分がメッセージを送っている人
  has_many :send_customers, through: :send_messages, source: :given_customer
  # 貰うメッセージ関係を通じて参照→自分にメッセージを送っている人
  has_many :given_customers, through: :given_messages, source: :send_customer


  # 以下relationshipsの設定

  # 自分がフォローされる（被フォロー）側の関係性
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  # 自分がフォローする（与フォロー）側の関係性
  has_many :relationships, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy
  # 被フォロー関係を通じて参照→自分をフォローしている人
  has_many :followings, through: :reverse_of_relationships, source: :following
  # 与フォロー関係を通じて参照→自分がフォローしている人
  has_many :followedes, through: :relationships, source: :followed

  def name
    self.last_name + ' '+ self.first_name
  end
end
