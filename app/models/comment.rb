class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true
  belongs_to :user, optional: true
  belongs_to :book, optional: true

  validates :description, presence: true, length: {minimum: 4, maximum: 140}
  # validates :user_id, presence: true
  
  default_scope -> { order(updated_at: :desc) }
end
