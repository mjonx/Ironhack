class Interaction < ApplicationRecord
  belongs_to :interactive, polymorphic: true
end
