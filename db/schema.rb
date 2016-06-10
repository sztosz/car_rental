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

ActiveRecord::Schema.define(version: 20160610205421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "car_manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "car_manufacturer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["car_manufacturer_id"], name: "index_car_models_on_car_manufacturer_id", using: :btree
  end

  create_table "car_producers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_rents", force: :cascade do |t|
    t.datetime "date_from"
    t.datetime "date_to"
    t.decimal  "price"
    t.integer  "customer_id"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["car_id"], name: "index_car_rents_on_car_id", using: :btree
    t.index ["customer_id"], name: "index_car_rents_on_customer_id", using: :btree
  end

  create_table "cars", force: :cascade do |t|
    t.integer  "car_model_id"
    t.string   "plate"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["car_model_id"], name: "index_cars_on_car_model_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "pesel"
    t.string   "licence"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_models", "car_manufacturers"
  add_foreign_key "car_rents", "cars"
  add_foreign_key "car_rents", "customers"
  add_foreign_key "cars", "car_models"
end
