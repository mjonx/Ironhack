class Business < ApplicationRecord
  has_many :interactions, as: :interactive
end
