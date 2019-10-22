class Hack < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  # has_many :comments

end
