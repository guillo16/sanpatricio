class Event < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :location, presence: true
  validate :end_date

  def end_date
    dates = Date.current
    errors.add(:date, "can't be before today") if date <= dates
  end
end
