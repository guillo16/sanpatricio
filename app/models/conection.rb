class Conection < ApplicationRecord
  validates :name, presence: true
  validates :building, presence: true
  validates :email, presence: true
  validates :message, presence: true
end
