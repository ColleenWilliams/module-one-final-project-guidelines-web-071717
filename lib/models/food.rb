class Food < ActiveRecord::Base

  has_many :wines, through: :food_wines
  has_many :food_wines

#finds food instance based on user input
  def self.food_from_user_input(food)
    type_of_food = Food.find_by food_type: "#{food}"
    @user_food = type_of_food
  end

  #finds types of wines (no duplicates) based on food_from_user_input
  def wine_type_by_food
    wine_array = self.wines
    wine_types = wine_array.map do |wine|
      wine.varietal
    end
    wine_types.uniq!
  end

end
