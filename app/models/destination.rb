class Destination < ApplicationRecord
  has_many :hacks
  has_many :users, through: :hacks
  has_many :likes, through: :hacks
  # has_many :comments, through: :hacks

  def str_addr_fields
    str = "#{self.city}, "
    str << "#{self.state}" if self.state.present?
    str << ", #{self.country}" unless self.country == 'USA'
  end

  def self.search(search)
    if search
      destinations = Destination.where("city LIKE (?) OR state LIKE (?) OR country LIKE (?)", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Destination.all
    end
  end
end
