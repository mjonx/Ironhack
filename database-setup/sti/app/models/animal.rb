class Animal < ActiveRecord::Base
  belongs_to :tribe
  self.inheritance_column = :race

  validates :race, presence: true

  scope :lions, -> { where(race: 'Lion') }
  scope :meerkats, -> { where(race: 'Meerkat') }
  scope :wild_boars, -> { where(race: 'WildBoar') }

  class << self
    def races
      %w(Lion WildBoar Meerkat)
    end
end

  def talk
    raise 'Abstract Method'
  end

end
