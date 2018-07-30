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

ActiveRecord::Schema.define(version: 20180729184027) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.string   "address"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "web"
    t.integer  "followers",  default: 0
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "sku"
    t.string   "store_number"
    t.string   "description"
    t.decimal  "regular_price"
    t.string   "dept_code"
    t.decimal  "sale_price"
    t.integer  "sale_qty"
    t.datetime "promo_start_date"
    t.datetime "promo_end_date"
    t.integer  "promo_min_qty"
    t.integer  "promo_limit_qty"
    t.integer  "promo_buy_qty"
    t.integer  "promo_get_qty"
    t.string   "promo_tag"
    t.string   "family_sale_code"
    t.decimal  "tax_pct"
    t.decimal  "bottle_deposit"
    t.boolean  "cool"
    t.string   "brand_name"
    t.string   "product_name"
    t.integer  "size"
    t.string   "uom"
    t.boolean  "scale_flag"
    t.string   "how_to_sell"
    t.decimal  "avg_weight"
    t.string   "wgt_selector"
    t.string   "item_location"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
