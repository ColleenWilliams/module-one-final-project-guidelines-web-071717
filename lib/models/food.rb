class Food < ActiveRecord::Base

  has_many :wines, through: :food_wines
  has_many :food_wines

  # def self.find_by_input
  #   food = self.where food_type: current_session.current_food
  # end


  # def food_relationships
  #
  #
  #
  #   # food_pairing = {"sauvignon blanc": ["vegetables", "fish"], "pinot grigio": ["vegetables", "fish"], "white table wine": ["vegetables", "fish"]  }
  #
  # end

end
