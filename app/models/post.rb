class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validate :body_length
  
  def body_length
    body.length < 20 ? errors.add(:body, "The length is less than 20 characters.") : true
  end

end
