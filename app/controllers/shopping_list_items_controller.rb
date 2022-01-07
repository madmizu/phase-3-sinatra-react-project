class ShoppingListItemsController < ApplicationController
    # Get all Shopping List Items
    get "/shopping-list" do
        shoppingList = ShoppingListItem.all
        shoppingList.to_json(include: {grocery_item:{include: [:spoil_date, {recipe_ingredients: {include: :recipe}}]}})
    end

    delete "/shopping-list/:id" do
        shoppingListItem = ShoppingListItem.find(params[:id])
        shoppingListItem.destroy
        {message: 'removed grocery item from shopping list'}.to_json
      end 
  
end

