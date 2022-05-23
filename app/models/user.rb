class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable
  has_many :posts

  validate :approve_must_be_false

  def approve_must_be_false
    if approve
      errors.add(:approve, "This parameter must be false")
      true
    else
      false
    end
  end

end
