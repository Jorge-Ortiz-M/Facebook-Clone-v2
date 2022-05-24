class User < ApplicationRecord
  include RolesConcern

  has_many :posts, dependent: :destroy

  before_create :approve_must_be_false
  before_create :role_must_be_member
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true, length: { minimum: 8 }

  validate :approve_must_be_false
  validate :role_must_be_member
  validate :passwords_must_be_equal
  validate :password_upper_letter
  validate :password_numbers

  devise :invitable, :database_authenticatable, :registerable,
    :recoverable, :rememberable, :confirmable, :trackable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :github]

    def self.from_omniauth(auth)
      password_generate = Devise.friendly_token[0,20]
      name_split = auth.info.name.split(" ")
      user = User.where(email: auth.info.email).first
      user ||= User.create!(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: password_generate, password_confirmation: password_generate, confirmed_at: Time.now)
      user
    end

    def approve_must_be_false
      approve ? errors.add(:approve, "This parameter must be false") : false
    end

    def role_must_be_member
      role != 'member' ? errors.add(:approve, "This parameter must be false") : role
    end

    def passwords_must_be_equal
      password === password_confirmation ? true : errors.add(:passwords, "are not the same.")
    end

    def password_upper_letter
      !!password.match(/\p{Upper}/) ? true : errors.add(:password, "should have at least one upper letter.")
    end

    def password_numbers
      !!password.match(/\p{Number}/) ? true : errors.add(:password, "should have at least one number.")
    end

end
