class Hack < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :likes, dependent: :destroy
  # has_many :comments
  validates :title, presence: true

end
