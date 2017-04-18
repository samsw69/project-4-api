class ProductSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :description, :price, :image_src
  # removed :image_src from attributes

  has_one :user

  def image_src
    object.image.url
  end
end
