class Recipe < ActiveRecord::Base
    has_many :recipe_ingredients
    has_many :grocery_items, through: :recipe_ingredients
end 