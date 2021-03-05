class Event < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :location, presence: true
  validate :end_date
  has_one_attached :photo
  validate :photo_attach

  private

  def photo_attach
    if photo.attached? == false
      errors.add(:photo, 'Tienes que elegir una foto')
    end
  end

  def end_date
    dates = Date.current
    errors.add(:date, "no puede ser anterior a hoy.") if date <= dates
  end
end
