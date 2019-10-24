class User < ApplicationRecord
  has_many :hacks, dependent: :destroy
  has_many :destinations, through: :hacks
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :active_relationships, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Follow", foreign_key: "followed_id", dependent: :destroy
  has_many :followed_users, through: :active_relationships, source: :followed_users
  has_many :follower_users, through: :passive_relationships, source: :follower_users
  validates :birthdate, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :bio, presence: true
  validates :password, length: { in: 8..20 }
  validate :age_greater_or_equal_to_13
  has_secure_password

  def age_greater_or_equal_to_13
    if birthdate
      if self.age < 13
        errors.add(:birthdate, ": Must be 13 or older")
      elsif self.age > 130
        errors.add(:birthdate, ": Troll Detected")
      end
    end
  end

  def age
    bday = birthdate.strftime("%d-%m-%Y")
    ((Time.zone.now - bday.to_time) / 1.year.seconds).floor
  end

  def top_five
    hacks.joins(:likes).select('hacks.*, count(hack_id) as hcount').group('hack_id').order('hcount DESC').limit(5)
  end
end
