class Course < ApplicationRecord
  belongs_to :user
  belongs_to :categories
  belongs_to :sub_categories
  validates :title, presence: true,
                    length: { minimum: 6 }

  mount_uploader :image, ImageUploader

  has_many :sections, dependent: :destroy
  #has_many :lectures, through: :sections



end
