class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "events_users"

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :description, allow_blank: false
end
