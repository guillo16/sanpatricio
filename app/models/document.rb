class Document < ApplicationRecord

  validates :title, presence: true
  validates :category, presence: true
  has_many_attached :files

  paginates_per 12

  private

  def file_attach
    if file.attached? == false
      errors.add(:file, 'tiene que estar presente')
    end
  end

end
