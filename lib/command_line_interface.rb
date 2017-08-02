class CLIRunner

  attr_reader :current_user, :current_food, :food_number, :cart

    def initialize
      @cart = []
    end

    def welcome
      puts "Welcome to the Food & Wine Pairing Library"
    end

    def validate_user
      puts "Please enter your name"
      user_input = gets.chomp
      current_user = user_input
      puts "Hello #{user_input}!"
      end

    def what_are_you_eating?
      puts "What's cooking, good looking?"
      puts "Please enter your main food category:"
      puts " 1. Vegetables \n 2. Roasted Vegetables \n 3. Soft Cheese \n 4. Hard Cheese \n 5. Starches \n 6. Fish \n 7. Rich Fish \n 8. White Meat \n 9. Red Meat \n 10. Cured Meat \n 11. Sweets"
      user_input = gets.chomp.downcase
      user_input
    end


    def food_names
      Food.all.map do |food|
        food.food_type
      end
    end

    def valid_input?(input)
      if food_names.include?(input)
        @current_food = input
      else
        puts "Please enter valid food"
        what_are_you_eating?
      end
    end

    def list_out_types_of_wines(wine_array)
      puts "These are the types of wines that go with your wine:"
      wine_array.each.with_index(1) do |value, index|
        puts "#{index}. #{value}"
      end
      puts "Please select one."
      user_input = gets.chomp
      user_input
    end

    def bottles_by_wine_type(bottle_array)
      puts "These are the bottles of wine according to your selected wine type:"
      bottle_array.each.with_index(1) do |bottle|
        puts "Name: #{bottle[0]}, Price: $#{bottle[1]}, Year: #{bottle[2]}"
      end
    end

    def purchase_wine?
      puts "Would you like buy a bottle? y/n"
      user_input = gets.chomp.downcase
      if user_input == "y"
        puts "Please enter the name of the bottle you wish to buy."
          user_selection = gets.chomp
          user_selection
      elsif user_input == "n"
        puts "Thank you for using our food & wine pairing app!"
        # logout
      end
    end

    def add_to_cart(bottle)
      @cart << bottle
      self.cart
    end


    def total
      prices = self.cart.map { |bottle| bottle.price }
      # [27, 14, 15, 12]
      prices.inject(:+)
    end



    # def add_to_cart(bottle)
    #   bottle_array.select do |bottle|
    #     bottle[0], bottle [1]
    #
    # end

    def logout
      "Later #{self.current_user}"
    end

end
