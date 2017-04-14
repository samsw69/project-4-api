class EventSerializer < ActiveModel::Serializer
  has_many :attendees
  belongs_to :user
  has_many :comments

  attributes :id, :title, :location, :date, :description, :image, :attendee_ids

end
