class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2, max: 20 }
  validates :description, presence: true, length: { minimum: 10, max: 200 }
end
