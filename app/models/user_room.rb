class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room

  scope :validate_presence, -> (user, room) { where(user_id: user, room_id: room) }
end
