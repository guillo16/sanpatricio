class Article < ApplicationRecord
  belongs_to :user
  belongs_to :division
  validates :title, presence: true
  validates :subtitle, presence: true
  has_one_attached :photo

end
