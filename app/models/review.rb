class Review < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :review_content, presence: true, length: { maximum: 65_535 }

  mount_uploader :review_image, ReviewImageUploader
end
