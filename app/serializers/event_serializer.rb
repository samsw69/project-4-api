class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :date, :description, :image
  has_one :user
end
