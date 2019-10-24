class User < ApplicationRecord
  has_many :hacks
  has_many :destinations, through: :hacks
  has_many :comments, through: :hacks
  has_many :active_relationships, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Follow", foreign_key: "followed_id", dependent: :destroy
  has_many :followed_users, through: :active_relationships, source: :followed_users
  has_many :follower_users, through: :passive_relationships, source: :follower_users
  validates :birthdate, presence: true
  has_secure_password


  def age
    bday = birthdate.strftime("%d-%m-%Y")
    ((Time.zone.now - bday.to_time) / 1.year.seconds).floor
  end
end
