# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_11_215154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "LG"
    t.integer "ICMS"
    t.float "discount_1"
    t.float "discount_2"
    t.float "discount_3"
    t.float "discount_4"
  end

  create_table "price_lists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "SKU1"
    t.float "gross_price1"
    t.bigint "manufacturer_id"
    t.float "net_price1"
    t.string "SKU2"
    t.float "gross_price2"
    t.float "net_price2"
    t.string "SKU3"
    t.float "gross_price3"
    t.float "net_price3"
    t.string "SKU4"
    t.float "gross_price4"
    t.float "net_price4"
    t.string "SKU5"
    t.float "gross_price5"
    t.float "net_price5"
    t.string "SKU6"
    t.float "gross_price6"
    t.float "net_price6"
    t.string "SKU7"
    t.float "gross_price7"
    t.float "net_price7"
    t.string "SKU8"
    t.float "gross_price8"
    t.float "net_price8"
    t.string "SKU9"
    t.float "gross_price9"
    t.float "net_price9"
    t.string "SKU10"
    t.float "gross_price10"
    t.float "net_price10"
    t.index ["manufacturer_id"], name: "index_price_lists_on_manufacturer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "price_lists", "manufacturers"
end
