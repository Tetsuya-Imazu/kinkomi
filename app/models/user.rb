class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  
  PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  
  with_options presence: true do
    validates :nickname, length: { maximum: 10 }
    validates :email
    validates :password, length: { minimum: 6 }, format: {with: PASSWORD_REGEX}
    validates :password_confirmation, length: { minimum: 6 }, format: {with: PASSWORD_REGEX}
  end

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
  
end
