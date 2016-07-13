class Product < ApplicationRecord
  belongs_to :user
  has_many :bids

  validates :title, presence: true
  validates :description, presence: true
  validates :enddate, presence: true
end
