class Article < ApplicationRecord
  include Visible
  # Relation to many comments
  has_many :comments, dependent: :destroy
  # Model data validation
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
