class ProductSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :description, :price, :image
  has_one :user
end
