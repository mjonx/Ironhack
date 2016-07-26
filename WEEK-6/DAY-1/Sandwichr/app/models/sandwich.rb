class Sandwich < ApplicationRecord
  has_many :ingredients, :through => :sandwich_ingredients
  has_many :sandwich_ingredients
end
