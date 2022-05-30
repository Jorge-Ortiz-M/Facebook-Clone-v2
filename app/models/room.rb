class Room < ApplicationRecord

    has_many :messages
    has_many :user_rooms
    has_many :participants, through: :user_rooms
    has_many :participants, :through => :user_rooms, :source => :user    
    belongs_to :user

    validates :name, uniqueness: true
    validates :user_id, presence: true
end
