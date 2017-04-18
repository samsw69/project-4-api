class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password validations: false

  has_many :comments

  has_many :events_created, class_name: "Event", foreign_key: "user_id"
  has_many :products_created, class_name: "Product", foreign_key: "user_id"

  has_and_belongs_to_many :events_attending, class_name: "Event", join_table: "events_users"
  has_many :comments

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  def oauth_login?
    github_id.present?
  end
end
