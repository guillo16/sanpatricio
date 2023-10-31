class Conection < ApplicationRecord
  validates :name, presence: true
  validates :building, presence: true
  validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i , allow_blank: true}
  validates :message, presence: true
  validates :matter, presence: true

  has_one_attached :file

  validate :file_size
  validate :file_content_type

  private

  def file_size
    if file.attached? && file.blob.byte_size > 3.megabytes
      errors.add(:file, 'Archivo excede el limite de 3MB ')
    end
  end

  def file_content_type
    if file.attached? && !file.content_type.in?(%w(application/pdf))
      errors.add(:file, 'El unico formato valido es PDF')
    end
  end
end
