class InventoryItemsController < ApplicationController
    # Get all Inventory Items
    get "/inventory" do
        inventory = InventoryItem.all
        inventory.to_json(include: {grocery_item:{include: [:spoil_date, {recipe_ingredients: {include: :recipe}}]}})
    end

    delete "/inventory/:id" do
        inventory = InventoryItem.find(params[:id])
        inventory.destroy
        {message: 'removed grocery item from inventory'}.to_json
      end 

    post "/inventory" do
        item = GroceryItem.find_by purchase_id: Purchase.last.id
        q = params[:quantity]
        u = params[:unit_of_measure]
        inStock = InventoryItem.create({quantity:q,unit_of_measure:u,grocery_item_id:item.id})
        inStock.to_json
    end
  
end
   