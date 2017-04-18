class ProductSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :description, :price, :image
  has_one :user
end

  def image_src
    object.image.url
  end


# add  ,:image_src   back into attributes for image upload
