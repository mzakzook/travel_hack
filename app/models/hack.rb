class Hack < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  
end
