class Course < ApplicationRecord
  belongs_to :user
  validates :title, presence: true,
                    length: { minimum: 6 }

  mount_uploader :image, ImageUploader


end
