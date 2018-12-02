class Product < ApplicationRecord
  has_many :inventories, dependent: :destroy
end
