class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  mount_uploader :video, VideoUploader
  
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user


  validates :name, :description, :category_id, :video, presence: true
  validates :category_id, numericality: { other_than: 1 }
end