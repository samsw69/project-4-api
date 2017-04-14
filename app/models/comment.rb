class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true
  validates :body, length: { minimum: 1, maximum: 142 }
end
