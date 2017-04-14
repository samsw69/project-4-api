class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :image
  has_one :user
end
