class Category < ApplicationRecord
  has_many :books, dependent: :destroy
  
  validates :name, presence: true, length: { minimum: 3 }
  
  searchkick
  
  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged]
  alias_attribute :slug, :name
end
