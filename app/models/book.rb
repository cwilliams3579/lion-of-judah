class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates_uniqueness_of :title
  validates :description, presence: true, length: {minimum: 10}
  # validates :user_id, presence: true
  default_scope -> { order(updated_at: :desc) }

end
