class Gallery < ApplicationRecord
  belongs_to :article
  has_many_attached :photos
  validates :title, presence: true
end
