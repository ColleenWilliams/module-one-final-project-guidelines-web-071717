
def runner(current_session)

  input = current_session.what_are_you_eating?

  current_session.valid_input?(input)

  food = input.downcase

  user_food = Food.food_from_user_input(food)

  wine_type_list = user_food.wine_type_by_food

  select_wine_type = current_session.list_out_types_of_wines(wine_type_list)

  wine_bottles = Wine.find_bottles(select_wine_type)

  current_session.bottles_by_wine_type(wine_bottles)

  wine_to_purchase = current_session.purchase_wine?(wine_bottles)

  bottle = Wine.find_wine_to_purchase(wine_to_purchase)

  current_session.add_to_cart(bottle)

  current_session.total

  current_session.continue_shopping?

  runner(current_session)

end
