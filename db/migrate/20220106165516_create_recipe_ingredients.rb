class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |m|
      m.integer :quantity
      m.string :unit_of_measure
      m.boolean :required
      m.references :recipe
      m.references :grocery_item
    end
  end
end
