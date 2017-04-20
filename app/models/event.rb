class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  belongs_to :genre
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "events_users"

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
