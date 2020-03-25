class Event < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true


  def end_date
    time = Time.now
    errors.add(:date, "can't be before today") if date <= time
  end
end
