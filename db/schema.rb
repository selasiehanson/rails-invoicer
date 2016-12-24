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

ActiveRecord::Schema.define(version: 20161224163029) do

  create_table "account_details", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "account_id"
    t.string   "role"
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_details_on_account_id"
    t.index ["user_id"], name: "index_account_details_on_user_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "organization_name"
    t.string   "business_email"
    t.integer  "created_by"
    t.boolean  "enabled"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "account_id"
    t.index ["account_id"], name: "index_clients_on_account_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "country"
    t.string   "iso_alpha2"
    t.string   "iso_alpha3"
    t.string   "iso_numeric"
    t.string   "currency_name"
    t.string   "currency_code"
    t.string   "symbol"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "text"
    t.string   "product_type"
    t.integer  "reorder_level"
    t.boolean  "can_be_sold"
    t.boolean  "can_be_purchased"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "account_id"
    t.index ["account_id"], name: "index_products_on_account_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "text"
    t.decimal  "amount",      precision: 5, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "account_id"
    t.index ["account_id"], name: "index_taxes_on_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
  end

end
