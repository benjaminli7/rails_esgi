class FridgeController < ApplicationController
  def index
    @fridge = Fridge.first
    @ingredients = Ingredient.all

  end


  def create
    @fridge = Fridge.first
    # @fridge.ingredients.push(params["ingredient_ids"])
    puts params["ingredient_ids"]
    for ingredient_id in params["ingredient_ids"]
      


    # if @fridge.save
    #   redirect_to root_path
    # else
    #     render :index, status: :unprocessable_entity
    # end

  end
end
