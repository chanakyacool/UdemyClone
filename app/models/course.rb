class Course < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 6 }
end
