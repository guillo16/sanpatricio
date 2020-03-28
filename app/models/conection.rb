class Conection < ApplicationRecord
  validates :name, presence: true
  validates :building, presence: true
  validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  validates :message, presence: true
end
