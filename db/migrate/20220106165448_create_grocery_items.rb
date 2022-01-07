class CreateGroceryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :grocery_items do |m|
      m.string :item_name
      m.references :purchase
      m.references :spoil_date
    end
  end
end
