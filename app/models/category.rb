class Category < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :sub_categories, dependent: :destroy
end
