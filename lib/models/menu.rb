class Menu
  attr_accessor :starters_array

  def initialize (menu)
    @menu = menu
    @starters_array = []
    populate_menu_arrays
  end

  def populate_menu_arrays

    @menu.each do |key, dish_hash|
        if dish_hash[:category] == "starters"
          @starters_array << dish_hash
        end

    end
  end




end
