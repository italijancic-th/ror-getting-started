class Article < ApplicationRecord
  # Relation to many comments
  has_many :comments
  # Model data validation
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
