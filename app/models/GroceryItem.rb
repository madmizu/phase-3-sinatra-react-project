class GroceryItem < ActiveRecord::Base
    belongs_to :purchase
    belongs_to :spoil_date
    belongs_to :shopping_list_item
    belongs_to :inventory_item
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
end 