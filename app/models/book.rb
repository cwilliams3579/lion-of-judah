class Book < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10}
  validates :user_id, presence: true
end
