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

ActiveRecord::Schema.define(version: 20190507132131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.bigint "owned_card_id"
    t.string "name"
    t.index ["owned_card_id"], name: "index_decks_on_owned_card_id"
  end

  create_table "owned_cards", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_owned_cards_on_card_id"
    t.index ["player_id"], name: "index_owned_cards_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "hometown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  add_foreign_key "decks", "owned_cards"
  add_foreign_key "owned_cards", "cards"
  add_foreign_key "owned_cards", "players"
end
