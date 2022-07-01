class HomeController < ApplicationController
  def index
    @fridge_exists  = Fridge.exists?
    if !@fridge_exists
      @fridge = Fridge.create()
    else
      @fridge = Fridge.first
    end

    @ingredientsCount = Ingredient.count
    if @ingredientsCount == 0
      @ingredientsList = ["oeuf", "mayonnaise", "moutarde"]
      @ingredientsList.each do |ingredient|
        Ingredient.create(name: ingredient)
      end
    end


  end
end
