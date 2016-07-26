class Person < ApplicationRecord
  has_many :interactions, as: :interactive
end
