class EventSerializer < ActiveModel::Serializer
  has_many :attendees
  belongs_to :user
  has_many :comments
  has_one :genre

  attributes :id, :title, :location, :date, :description, :attendee_ids, :image_src, :genre

    def image_src
      object.image.url
    end

end
