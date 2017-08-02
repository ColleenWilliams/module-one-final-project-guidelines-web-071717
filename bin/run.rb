require_relative '../config/environment'

current_session = CLIRunner.new
current_session.welcome
current_session.validate_user
food = current_session.what_are_you_eating?
# food_names
current_session.valid_input?(food)
user_food = Food.food_from_user_input(food)
binding.pry
wine_type_list = user_food.wine_type_by_food
