class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  def list_of_plant_names
    plants.any? ? plants.map { |p| p.name }.join(", ") : 'nothing was planted here'
  end

  def self.poetic_description
    "Life is the most fertile garden. If you plan seeds of love, flowers of happiness will grow to fill your soul."
  end
end
