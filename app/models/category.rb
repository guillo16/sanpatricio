class Category < ApplicationRecord
  has_many :posts
  validates :title, presence: true
  validates :photo, presence: true
end
