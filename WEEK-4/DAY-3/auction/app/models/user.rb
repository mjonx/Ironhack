class User < ApplicationRecord
  has_many :products #use plural!

  validates :name, presence: true,
                  uniqueness: true

  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
