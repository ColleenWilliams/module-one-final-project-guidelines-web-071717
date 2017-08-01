class Wine < ActiveRecord::Base
  has_many :food_wines
  has_many :foods, through: :food_wines

end
