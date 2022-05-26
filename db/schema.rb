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

ActiveRecord::Schema[7.0].define(version: 2022_05_26_083636) do
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
    t.string "status", default: "pending"
  end

  create_table "data_migrations", id: false, force: :cascade do |t|
    t.string "version"
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.string "from", null: false
    t.string "to", null: false
    t.decimal "rate", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "salaries", force: :cascade do |t|
    t.integer "amount", null: false
    t.string "currency", null: false
    t.integer "year", null: false
    t.integer "work_experience", null: false
    t.string "education"
    t.string "company_size"
    t.string "designation"
    t.string "status", default: "approved", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "primary_technology"
    t.boolean "pegged_salary"
    t.text "advice"
    t.boolean "company_base_lk", default: true
  end

  create_table "salary_votes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "salary_id"
    t.integer "vote_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salary_id"], name: "index_salary_votes_on_salary_id"
    t.index ["user_id", "salary_id"], name: "index_salary_votes_on_user_id_and_salary_id", unique: true
    t.index ["user_id"], name: "index_salary_votes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "hashed_email", null: false
    t.string "role", default: "normal_user", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashed_email"], name: "index_users_on_hashed_email", unique: true
  end

end
