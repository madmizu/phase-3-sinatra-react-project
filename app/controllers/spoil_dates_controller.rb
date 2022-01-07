class SpoilDatesController < ApplicationController
    # Get all Spoil Dates
    get "/spoil-dates" do
      SpoilDate.all.to_json
    end

    post "/spoil-dates" do
      spoiler = SpoilDate.create({spoil_date:params[:spoil_date]})
      spoiler.to_json
    end
    # post "/spoil-dates" do 
    #   spoilDate = SpoilDate.create({spoil_date:params[:spoil_date]})
    #   spoilDate.to_json
    # end 

end
  