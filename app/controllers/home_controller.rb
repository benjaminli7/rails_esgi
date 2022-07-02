class HomeController < ApplicationController
  def index
    @fridge = Fridge.first
    @ingredients = Ingredient.all

    ## Créer un frigo s'il n'existe pas
    @fridge_exists  = Fridge.exists?
    if !@fridge_exists
      @fridge = Fridge.create()
    else
      @fridge = Fridge.first
    end

    ## Générer des ingrédients et recettess'il n'y en a pas
    if Recipe.count == 0 && Ingredient.count == 0
      helpers.generate_data()
    end
  


    @possibleRecipes = []
    @impossibleRecipes = []
    
    for recipe in Recipe.all
      @hasAllIngredients = true
      for ingredientRecipe in recipe.ingredients
        @ingredient = Ingredient.where(name: ingredientRecipe).first.id
        if !@fridge.ingredients.include?(@ingredient)
          @hasAllIngredients = false
        end
      end
      if @hasAllIngredients
        @possibleRecipes.push(recipe)
      else
        @impossibleRecipes.push(recipe)
      end
    end
  end
end
