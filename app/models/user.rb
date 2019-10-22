class User < ApplicationRecord
  has_many :hacks
  has_many :destinations, through: :hacks
  # has_many :comments, through: :hacks
  has_secure_password

  def age
    bday = birthdate.strftime("%d-%m-%Y")
    ((Time.zone.now - bday.to_time) / 1.year.seconds).floor
  end
end
