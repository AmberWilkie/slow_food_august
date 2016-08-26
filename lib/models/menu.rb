class Menu
  attr_accessor :starters_array, :mains_array, :desserts_array

  def initialize (menu)
    @menu = menu
    @starters_array = []
    @mains_array = []
    @desserts_array = []
    populate_menu_arrays
  end

  def populate_menu_arrays
    # Need to make sure the Dish table is set up the same way I'm using the fake table in the spec file.

    @menu.each do |key, dish_hash|
        if dish_hash[:category] == "starter"
          @starters_array << dish_hash
        elsif dish_hash[:category] == "main"
          @mains_array << dish_hash
        elsif dish_hash[:category] == "dessert"
          @desserts_array << dish_hash
        end
    end
  end

end
