class Post < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
