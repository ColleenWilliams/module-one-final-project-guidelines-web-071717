class CLIRunner

  attr_reader :current_user, :current_food, :food_number

    def welcome
      # puts out a welcome message here!
      puts "Welcome to the Wine Library"
    end

    # def validate_user
    #   puts "Please enter your name"
    #   # use gets to capture the user's input. This method should return that input, downcased.
    #   user_input = gets.chomp
    #   puts "Hello #{user_input}!"
    # end

      def validate_user
        puts "Please enter your name"
        # use gets to capture the user's input. This method should return that input, downcased.
        user_input = gets.chomp
        @current_user = user_input
        puts "Hello #{user_input}!"
      end

    def what_are_you_eating?
      puts "What's cooking, good looking?"
      puts "Please enter your main food category:"
      puts " 1. Vegetables \n 2. Roasted Vegetables \n 3. Soft Cheese \n 4. Hard Cheese \n 5. Starches \n 6. Fish \n 7. Rich Fish \n 8. White Meat \n 9. Red Meat \n 10. Cured Meat \n 11. Sweets"
      user_input = gets.chomp.downcase
      # binding.pry
      user_input
    end


    def food_names
      Food.all.map do |food|
        food.food_type
      end
      # binding.pry
    end

    def valid_input?(input)
      if food_names.include?(input)
        @current_food = input
      else
        puts "Please enter valid food"
        what_are_you_eating?
      end
    end



    def return_food_id
      food_object = Food.all.select do |food|
        if food.food_type == @current_food
          return food
        end
      end
      @food_number = food_object[:id]
      binding.pry
    end

    def find_wine_ids
      FoodWines.all.select do |fw|
        if fw.food_id == @food_number
          fw.wine_id
        end
      end
      binding.pry
    end

    def logout
      "Later #{self.current_user}"
    end

end
