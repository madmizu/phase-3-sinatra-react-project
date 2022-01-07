class PurchasesController < ApplicationController
    # Get all Purchases
    get "/purchases" do
        Purchase.all.to_json
    end

    post "/purchases" do 
        purchase = Purchase.create({purchase_date:params[:purchase_date]})
        purchase.to_json
      end 
  
end
  