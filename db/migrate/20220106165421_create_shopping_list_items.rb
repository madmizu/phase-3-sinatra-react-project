class CreateShoppingListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_list_items do |m|
      m.integer :quantity
      m.string :unit_of_measure
      m.references :grocery_item
    end
  end
end
