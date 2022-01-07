class RecipeIngredientsController < ApplicationController
    # Get all recipe ingredients
    get "/ingredients" do
        ingredients = RecipeIngredient.all
        ingredients.to_json(include: [:recipe, :grocery_item])
    end
  
end
  