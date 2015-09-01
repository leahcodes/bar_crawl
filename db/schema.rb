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

ActiveRecord::Schema.define(version: 20150901172854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cafes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: :cascade do |t|
    t.integer  "stop_id"
    t.integer  "random_id"
    t.integer  "happiness"
    t.integer  "energy"
    t.float    "money"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "randoms", force: :cascade do |t|
    t.integer  "change_happiness"
    t.integer  "change_energy"
    t.float    "change_money"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stops", force: :cascade do |t|
    t.integer  "bar_id"
    t.integer  "cafe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
