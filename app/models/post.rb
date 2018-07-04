class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged]
  alias_attribute :slug, :title
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10}
  validates :user_id, presence: true
  default_scope -> { order(updated_at: :desc) }
end
