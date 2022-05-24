class User < ApplicationRecord
  include RolesConcern
  has_many :posts

  before_create :approve_must_be_false
  before_create :role_must_be_member

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable, :trackable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :github]

    def self.from_omniauth(auth)
      name_split = auth.info.name.split(" ")
      user = User.where(email: auth.info.email).first
      user ||= User.create!(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: '123456', confirmed_at: Time.now)
      user
    end

  # Validates if the new record is set to false (approve attribute).

    def approve_must_be_false
      approve ? errors.add(:approve, "This parameter must be false") : false
    end

  # Validates if the new record is set to member (role attribute).

    def role_must_be_member
      role != 'member' ? errors.add(:approve, "This parameter must be false") : role
    end

end
