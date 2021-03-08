class Document < ApplicationRecord

  validates :title, presence: true
  validates :category, presence: true
  has_one_attached :file
  validate :file_attach
  paginates_per 12

  private

  def file_attach
    if file.attached? == false
      errors.add(:file, 'tiene que estar presente')
    end
  end

end
