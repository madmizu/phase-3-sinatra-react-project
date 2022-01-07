class GroceryItemsController < ApplicationController
    # Get all Grocery Items
    get "/grocery-items" do
        groceries = GroceryItem.all
        # groceries.to_json({include: [:purchase, :spoil_date]})
        # groceries.to_json(include:{recipe_ingredients:{include: :recipe}})
        groceries.to_json(include:[{recipe_ingredients:{include: :recipe}},:purchase, :spoil_date], except: [:purchase_id, :spoil_date_id])
    end

    post "/grocery-items" do
        spoil = SpoilDate.find_by spoil_date:params[:spoil_date]
        item = GroceryItem.create({item_name:params[:item_name],purchase_id:Purchase.last.id,spoil_date_id:spoil.id})
        item.to_json
      end

  
end
  