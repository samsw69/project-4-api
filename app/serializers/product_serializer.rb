class ProductSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :description, :genre_ids, :price, :image_src

  has_one :user

  def image_src
    object.image.url
  end
end
