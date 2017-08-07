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

ActiveRecord::Schema.define(version: 20170807221601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "vehicle_type", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories_vehicles", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_categories_vehicles_on_category_id", using: :btree
    t.index ["vehicle_id"], name: "index_categories_vehicles_on_vehicle_id", using: :btree
  end

  create_table "extras", force: :cascade do |t|
    t.string   "equipment",  null: false
    t.float    "cost",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extras_reservations", force: :cascade do |t|
    t.integer  "extra_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["extra_id"], name: "index_extras_reservations_on_extra_id", using: :btree
    t.index ["reservation_id"], name: "index_extras_reservations_on_reservation_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address",    null: false
    t.string   "city",       null: false
    t.string   "state",      null: false
    t.string   "zipcode",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "location",                    null: false
    t.date     "start_date",                  null: false
    t.date     "end_date",                    null: false
    t.boolean  "completed",   default: false
    t.float    "total_price"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "location",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "year",          null: false
    t.string   "make",          null: false
    t.string   "model",         null: false
    t.string   "color",         null: false
    t.integer  "serial_number", null: false
    t.integer  "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["location_id"], name: "index_vehicles_on_location_id", using: :btree
  end

  add_foreign_key "categories_vehicles", "categories"
  add_foreign_key "categories_vehicles", "vehicles"
  add_foreign_key "extras_reservations", "extras"
  add_foreign_key "extras_reservations", "reservations"
  add_foreign_key "reservations", "users"
  add_foreign_key "vehicles", "locations"
end
