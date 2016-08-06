class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :courses #, dependent: :destroy
end
