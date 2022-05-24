class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable, :trackable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :github]

    def self.from_omniauth(auth)
      name_split = auth.info.name.split(" ")
      user = User.where(email: auth.info.email).first
      user ||= User.create!(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: '123456')
      user
    end
  
  include RolesConcern
  
  has_many :posts

  before_create :approve_must_be_false
  before_create :role_must_be_member

  # Validates if the new record is set to false (approve attribute).

    def approve_must_be_false
      if approve
        errors.add(:approve, "This parameter must be false")
        true
      else
        false
      end
    end

  # Validates if the new record is set to member (role attribute).

    def role_must_be_member
      if !(role === 'member')
        errors.add(:approve, "This parameter must be false")
      end
      role
    end

end
