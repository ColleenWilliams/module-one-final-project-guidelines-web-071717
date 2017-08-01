class Food < ActiveRecord::Base

  has_many :wines, through: :foodwines

  # def food_relationships
  #
  #
  #
  #   # food_pairing = {"sauvignon blanc": ["vegetables", "fish"], "pinot grigio": ["vegetables", "fish"], "white table wine": ["vegetables", "fish"]  }
  #
  # end
  
end
