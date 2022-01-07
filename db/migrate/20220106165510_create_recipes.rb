class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |m|
      m.string :recipe_name
      m.string :link
      m.string :image
    end
  end
end
