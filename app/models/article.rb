class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :category, presence: true
  validates :photo, presence: true
end
