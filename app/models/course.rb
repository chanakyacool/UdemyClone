class Course < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  validates :title, presence: true,
                    length: { minimum: 6 }

  mount_uploader :image, ImageUploader

  has_many :sections, dependent: :destroy
  #has_many :lectures, through: :sections



end
