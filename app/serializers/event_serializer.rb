class EventSerializer < ActiveModel::Serializer
  has_many :attendees
  belongs_to :user
  has_many :comments

  attributes :id, :title, :location, :date, :description, :attendee_ids, :image_src
# removed :image from attributes

    def image_src
      object.image.url
    end

end
