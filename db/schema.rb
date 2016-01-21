# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160114204519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.string   "mana_cost"
    t.text     "colors",     default: [],              array: true
    t.string   "rarity"
    t.string   "card_type"
    t.string   "set"
    t.string   "image_url"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "card_text"
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer  "deck_id"
    t.integer  "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deck_cards", ["card_id"], name: "index_deck_cards_on_card_id", using: :btree
  add_index "deck_cards", ["deck_id"], name: "index_deck_cards_on_deck_id", using: :btree

  create_table "decks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "user_id"
  end

  add_index "decks", ["user_id"], name: "index_decks_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "uid"
    t.string   "username"
    t.string   "image_url"
    t.string   "oauth_token"
    t.string   "oauth_token_secret"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "deck_cards", "cards"
  add_foreign_key "deck_cards", "decks"
  add_foreign_key "decks", "users"
end
