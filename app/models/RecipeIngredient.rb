class RecipeIngredient < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :grocery_item
end 