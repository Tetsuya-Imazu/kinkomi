class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  mount_uploader :video, VideoUploader
  
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  with_options presence: true do
    validates :name,        length: { maximum: 20 }
    validates :description, length: { maximum: 140 }
    validates :category_id, numericality: { other_than: 1 }
    validates :video
  end

end