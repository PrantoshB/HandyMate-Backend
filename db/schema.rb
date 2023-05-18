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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_05_18_132119) do
=======
ActiveRecord::Schema[7.0].define(version: 2023_05_18_120532) do
>>>>>>> 7400121337ab8eb4d3ab7a1e2324a6a7bd63e573
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "location_id", null: false
    t.bigint "user_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_reservations_on_location_id"
    t.index ["service_id"], name: "index_reservations_on_service_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

=======
>>>>>>> 7400121337ab8eb4d3ab7a1e2324a6a7bd63e573
  create_table "services", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "details"
    t.integer "duration"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "locations"
  add_foreign_key "reservations", "services"
  add_foreign_key "reservations", "users"
=======
>>>>>>> 7400121337ab8eb4d3ab7a1e2324a6a7bd63e573
end
