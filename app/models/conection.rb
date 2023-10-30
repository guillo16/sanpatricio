class Conection < ApplicationRecord
  validates :name, presence: true
  validates :building, presence: true
  validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i , allow_blank: true}
  validates :message, presence: true
  validates :matter, presence: true

  has_one_attached :file
end
