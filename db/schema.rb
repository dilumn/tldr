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

ActiveRecord::Schema[7.0].define(version: 2022_04_06_173133) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "change_requests", force: :cascade do |t|
    t.string "request_type", null: false
    t.string "company_name", null: false
    t.string "pegged_currency", null: false
    t.text "description"
    t.string "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pegging_value"
    t.string "proportion"
  end

  create_table "data_migrations", id: false, force: :cascade do |t|
    t.string "version"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.boolean "pegged", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "great_place_to_work", default: false
    t.string "pegged_currency"
    t.string "remarks"
    t.integer "pegging_value"
    t.string "proportion"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "full_name"
    t.string "role", default: "normal_user", null: false
    t.string "uid"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
