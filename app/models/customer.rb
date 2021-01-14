class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :nick_name, presence: true, length: { maximum:6 }
  validates :sex, presence: true
  validates :age, presence: true, numericality: { greater_than: 6 } && { less_than: 100 }
  validates :email, presence: true
  validates :encrypted_password, presence: true, length: { minimum:6 }

  has_many :customer_study_qualifications
  has_many :qualifications, through: :customer_study_qualifications, dependent: :destroy

  has_many :customer_have_qualifications
  has_many :qualifications, through: :customer_have_qualifications, dependent: :destroy

  has_many :events, dependent: :destroy
  has_many :stories, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_stories, through: :likes, source: :story, dependent: :destroy

  # 以下post_commentsの設定

  has_many :given_messages, class_name: "PostComment", foreign_key: "given_customer_id", dependent: :destroy # 自分がメッセージを貰う側の関係性
  has_many :send_messages, class_name: "PostComment", foreign_key: "send_customer_id", dependent: :destroy   # 自分がメッセージを送る側の関係性
  #「@customer.given_customersとした際に、@customerにメッセージを送っているcustomer一覧」を返す
  has_many :given_customers, through: :given_messages, source: :send_customer                                # 貰うメッセージ関係を通じて参照→自分にメッセージを送っている人
  #「@customer.send_customersとした際に、@customerからメッセージを送っているcustomer一覧」を返す
  has_many :send_customers, through: :send_messages, source: :given_customer                                 # 送るメッセージ関係を通じて参照→自分がメッセージを送っている人

  # 以下relationshipsの設定

  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # 自分がフォローされる（被フォロー）側の関係性
  has_many :relationships, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy           # 自分がフォローする（与フォロー）側の関係性
  #「@customer.followedesとした際に、@customerをフォローしているcustomer一覧」を返す
  has_many :followedes, through: :reverse_of_relationships, source: :following                                    # 与フォロー関係を通じて参照→自分がフォローしている人
  #「@customer.followingsとした際に、@customerがフォローしているcustomer一覧」を返す
  has_many :followings, through: :relationships, source: :followed                                                # 被フォロー関係を通じて参照→自分をフォローしている人


  def name
    self.last_name + ' '+ self.first_name
  end

  def follow(customer_id)
    relationships.create(followed_id: customer_id)
  end

  def unfollow(customer_id)
    relationships.find_by(followed_id: customer_id).destroy
  end

  def following?(current_customer)
    followings.include?(current_customer)
  end

end
