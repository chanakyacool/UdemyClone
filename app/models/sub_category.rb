class SubCategory < ApplicationRecord
  has_many :courses #, dependent: :destroy
end
