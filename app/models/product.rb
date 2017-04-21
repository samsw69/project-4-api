class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_and_belongs_to_many :genres, class_name: "Genre", join_table: "genres_products"

  validates :title, presence: true
  validates :price, presence: true
  validates :description, length: { minimum: 1, maximum: 142 }
end
