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

ActiveRecord::Schema.define(version: 20160814225838) do

  create_table "buildings", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "buildings", ["property_id"], name: "index_buildings_on_property_id"

  create_table "portfolios", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "entity"
    t.string   "sq_ft"
    t.string   "tax"
    t.integer  "portfolio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "properties", ["portfolio_id"], name: "index_properties_on_portfolio_id"

  create_table "suites", force: :cascade do |t|
    t.string   "lock_box_location"
    t.string   "lock_box_combo"
    t.integer  "sq_ft"
    t.boolean  "vacant"
    t.integer  "building_id"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "suites", ["building_id"], name: "index_suites_on_building_id"

  create_table "tenants", force: :cascade do |t|
    t.integer  "suite_id"
    t.integer  "building_id"
    t.integer  "property_id"
    t.integer  "portfolio_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "contact_type"
    t.string   "company_name"
    t.string   "email"
    t.string   "preferred_method_of_contact"
    t.boolean  "current"
    t.integer  "phone_direct",                limit: 8
    t.integer  "phone_direct_ext",            limit: 8
    t.integer  "phone_mobile",                limit: 8
    t.integer  "fax_number",                  limit: 8
    t.text     "notes"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "tenants", ["building_id"], name: "index_tenants_on_building_id"
  add_index "tenants", ["portfolio_id"], name: "index_tenants_on_portfolio_id"
  add_index "tenants", ["property_id"], name: "index_tenants_on_property_id"
  add_index "tenants", ["suite_id"], name: "index_tenants_on_suite_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
