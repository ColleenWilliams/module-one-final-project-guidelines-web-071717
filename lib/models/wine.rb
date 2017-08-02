require 'pry'

class Wine < ActiveRecord::Base

  has_many :foods, through: :foodwines

  def self.find_bottles(wine_type)
    wine_array = self.where varietal: "#{wine_type}"
    bottle_array = wine_array.map do |wine|
      [wine.name, wine.price, wine.vintage]
    end
    bottle_array
  end

  def self.find_wine_to_purchase(wine_name)
    # bottle_info = {}
    # bottle = self.find_by name: "#{wine_name}"
    # bottle_info[:wine_name] = bottle.price.to_f
    # bottle_info
    self.find_by(name: wine_name)
  end






end
