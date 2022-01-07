class RecipesController < ApplicationController
    # Get all Recipes
    get "/recipes" do
        Recipe.all.to_json
    end
  
end
  
