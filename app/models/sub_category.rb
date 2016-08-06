class SubCategory < ApplicationRecord
  has_many :courses, dependant: :destroy
end
