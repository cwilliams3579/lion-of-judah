class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :post
  validates :description, presence: true, length: {minimum: 10}
end
