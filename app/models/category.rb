class Category < ApplicationRecord
  validates :title, presence: true
  validates :photo, presence: true
end
