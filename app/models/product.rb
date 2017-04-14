class Product < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 1, maximum: 142 }
end
