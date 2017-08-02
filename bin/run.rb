require_relative '../config/environment'

current_session = CLIRunner.new
current_session.welcome
current_session.validate_user
input = current_session.what_are_you_eating?
# food_names
if current_session.valid_input?(input) == false
  current_session.what_are_you_eating?
  else
    food = current_session.valid_input?(input)
end





##issue
user_food = Food.food_from_user_input(food)
wine_type_list = user_food.wine_type_by_food
select_wine_type = current_session.list_out_types_of_wines(wine_type_list)
wine_bottles = Wine.find_bottles(select_wine_type)
current_session.bottles_by_wine_type(wine_bottles)

#
# food = current_session.valid_input?(input)
