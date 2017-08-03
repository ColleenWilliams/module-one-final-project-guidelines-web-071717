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
    wine_to_purchase = self.where name: "#{wine_name}"
    if wine_to_purchase.count > 1
      puts "There are multiple bottles with that name. Please enter the year of the bottle you'd like to purchase."
      wine_to_purchase.map do |wine|
        puts "#{wine.name}, $#{wine.price}, #{wine.vintage}."
      end
      user_input = gets.chomp
      current_wine = wine_to_purchase.find do |wine|
        wine.vintage == user_input
      end
      current_wine
    else
      wine_to_purchase[0]
    end
  end


end
