class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :about, :image
end
