class Product < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :genres, class_name: "Genre", join_table: "products_genres"

  validates :title, presence: true
  validates :price, presence: true
  validates :description, allow_blank: false
end
