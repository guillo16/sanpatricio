class Article < ApplicationRecord
  belongs_to :user
  belongs_to :division
  validates :title, presence: true
  validates :subtitle, presence: true
  has_one_attached :photo
  has_many_attached :images
  has_many :galleries, dependent: :destroy
  validate :photo_attach
  paginates_per 12

  private

  def photo_attach
    if photo.attached? == false
      errors.add(:photo, 'Tienes que elegir una foto')
    end
  end
end
