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

ActiveRecord::Schema[7.0].define(version: 2023_01_26_191637) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "link"
    t.string "pic"
    t.bigint "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_accommodations_on_trip_id"
  end

  create_table "attends", force: :cascade do |t|
    t.bigint "shredder_id", null: false
    t.bigint "trip_id", null: false
    t.boolean "present"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shredder_id"], name: "index_attends_on_shredder_id"
    t.index ["trip_id"], name: "index_attends_on_trip_id"
  end

  create_table "awards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "trip_id", null: false
    t.bigint "shredder_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shredder_id"], name: "index_awards_on_shredder_id"
    t.index ["trip_id"], name: "index_awards_on_trip_id"
  end

  create_table "gears", force: :cascade do |t|
    t.integer "year"
    t.string "brand"
    t.string "model"
    t.string "specs"
    t.string "pic"
    t.bigint "shredder_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shredder_id"], name: "index_gears_on_shredder_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "map"
    t.integer "top_ele"
    t.integer "base_ele"
    t.integer "vertical"
    t.integer "area"
    t.integer "runs"
    t.string "pic"
    t.bigint "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_resorts_on_trip_id"
  end

  create_table "shredders", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.date "dob"
    t.string "kind"
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "location"
    t.string "hashtag"
    t.string "slogan"
    t.string "song"
    t.string "bracket"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accommodations", "trips"
  add_foreign_key "attends", "shredders"
  add_foreign_key "attends", "trips"
  add_foreign_key "awards", "shredders"
  add_foreign_key "awards", "trips"
  add_foreign_key "gears", "shredders"
  add_foreign_key "resorts", "trips"
end
