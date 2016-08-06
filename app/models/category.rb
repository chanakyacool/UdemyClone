class Category < ApplicationRecord
  has_many :courses, dependant: :destroy
  has_many :sub_categories, dependant: :destroy
end
