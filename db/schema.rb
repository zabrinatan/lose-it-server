# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_25_083323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.text "ingredientLabel"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_recipes", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  create_table "nutritions", force: :cascade do |t|
    t.text "label"
    t.text "quantity"
    t.text "unit"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.text "label"
    t.text "image"
    t.text "yield"
    t.text "calories"
    t.text "url"
    t.text "totalTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes_users", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "first_name"
    t.text "last_name"
    t.integer "weight"
    t.integer "height"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
