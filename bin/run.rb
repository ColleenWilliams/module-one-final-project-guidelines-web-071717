require_relative '../config/environment'

current_session = CLIRunner.new
current_session.welcome
current_session.validate_user
food = current_session.what_are_you_eating?
# food_names
current_session.valid_input?(food)
current_session.return_food_id
current_session.find_wine_ids
