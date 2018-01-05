class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :posts
  has_many :comments

  alias_method :authenticate, :valid_password?

  after_create :welcome_send

  def welcome_send
  	UserMailer.welcome_email(self).deliver
  end

  def self.from_token_payload(payload)
    self.find payload["sub"]
  end

end
