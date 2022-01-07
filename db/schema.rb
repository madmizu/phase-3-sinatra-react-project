# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_06_165516) do

  create_table "grocery_items", force: :cascade do |t|
    t.string "item_name"
    t.integer "purchase_id"
    t.integer "spoil_date_id"
    t.index ["purchase_id"], name: "index_grocery_items_on_purchase_id"
    t.index ["spoil_date_id"], name: "index_grocery_items_on_spoil_date_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit_of_measure"
    t.integer "grocery_item_id"
    t.index ["grocery_item_id"], name: "index_inventory_items_on_grocery_item_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.date "purchase_date"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit_of_measure"
    t.boolean "required"
    t.integer "recipe_id"
    t.integer "grocery_item_id"
    t.index ["grocery_item_id"], name: "index_recipe_ingredients_on_grocery_item_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name"
    t.string "link"
    t.string "image"
  end

  create_table "shopping_list_items", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit_of_measure"
    t.integer "grocery_item_id"
    t.index ["grocery_item_id"], name: "index_shopping_list_items_on_grocery_item_id"
  end

  create_table "spoil_dates", force: :cascade do |t|
    t.date "spoil_date"
  end

end
