class Like < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged]
  alias_attribute :slug, :like
end
