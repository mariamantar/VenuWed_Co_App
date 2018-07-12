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

ActiveRecord::Schema.define(version: 2018_07_12_102612) do

  create_table "companies", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "phone"
    t.string "website"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.string "location"
    t.string "phone"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "guest_lists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "rsvp"
    t.string "address"
    t.integer "phone"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_guest_lists_on_customer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "venue_listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["venue_listing_id"], name: "index_orders_on_venue_listing_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.string "rating"
    t.string "image"
    t.integer "venue_listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_listing_id"], name: "index_reviews_on_venue_listing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venue_listings", force: :cascade do |t|
    t.string "image"
    t.string "description"
    t.float "cost"
    t.float "date"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_venue_listings_on_company_id"
  end

end
