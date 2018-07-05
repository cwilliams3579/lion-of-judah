class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category
  
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  searchkick
  
  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged]
  alias_attribute :slug, :title
  
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates_uniqueness_of :title
  validates :description, presence: true, length: {minimum: 10}
  default_scope -> { order(updated_at: :desc) }
  
  def likes_total
    self.likes.where(like: "like").count
  end

  def dislikes_total
    self.likes.where(like: "dislike").count
  end
end
