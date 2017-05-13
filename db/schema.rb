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

ActiveRecord::Schema.define(version: 20170513013943) do

  create_table "bets", force: :cascade do |t|
    t.string   "match"
    t.float    "home_win"
    t.float    "draw"
    t.float    "away_win"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discussions", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_bets", force: :cascade do |t|
    t.integer  "bet_id"
    t.string   "user_selection"
    t.integer  "user_id"
    t.integer  "amount_bet"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "bet_odds"
    t.string   "bet_match"
    t.index ["user_id", "created_at"], name: "index_user_bets_on_user_id_and_created_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.integer  "tokens",            default: 100
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end