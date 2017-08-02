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




end
