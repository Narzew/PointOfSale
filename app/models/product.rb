class Product < ApplicationRecord
  validates :code, uniqueness: true
  validates :price, numericality: true
end
