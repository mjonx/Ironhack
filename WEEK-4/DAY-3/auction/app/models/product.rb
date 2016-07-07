class Product < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,
  validates :description, presence: true,
  validates :enddate, presence: true,
end
