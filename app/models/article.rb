class Article < ApplicationRecord
  belongs_to :user
  belongs_to :division
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :photo, presence: true
end
