class FridgeController < ApplicationController
  def index
  end

  def add_ingredients_view
    @fridge = Fridge.first
    @ingredients = Ingredient.all
  end

  def add_ingredients
    @fridge = Fridge.first
    @ingredients = Ingredient.all

    if params["ingredient_ids"].nil? == false
      for ingredient_id in params["ingredient_ids"]
        @fridge.ingredients.push(ingredient_id)
      end
    else 
      render :add_ingredients_view, notice: "Veuillez sélectionner des ingrédients à ajouter"
      return
    end

    # for ingredient_id in params["ingredient_ids"]
    #   @fridge.ingredients.push(ingredient_id)
    # end

    if @fridge.save
      redirect_to root_path
    end
  end

  def remove_ingredients_view
    @fridge = Fridge.first
    @ingredients = Ingredient.all
  end

  def remove_ingredients
    @fridge = Fridge.first
    @ingredients = Ingredient.all


    if params["ingredient_ids"].nil? == false
      for ingredient_id in params["ingredient_ids"]
        @fridge.ingredients.delete(ingredient_id.to_i)
      end
    else 
      render :remove_ingredients_view, notice: "Veuillez sélectionner des ingrédients à supprimer"
      return
    end

    if @fridge.save
      redirect_to root_path
    else
      render :remove_ingredients_view, notice: "Une erreur est survenue"
    end
  end
end