class UserSerializer < ActiveModel::Serializer
  has_many :events_created
  has_many :events_attending
  has_many :products_created
  has_many :comments
  attributes :id, :name, :username, :email, :about, :image
end

def image_src
  object.image.url
end
