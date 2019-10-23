class Hack < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  validates :title, presence: true
  # has_many :comments

end
