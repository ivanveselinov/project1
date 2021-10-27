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

ActiveRecord::Schema.define(version: 2021_10_26_234724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.text "name"
    t.text "surname"
    t.text "mobile"
    t.text "phone"
    t.text "email"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents_properties", id: false, force: :cascade do |t|
    t.integer "agent_id"
    t.integer "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text "adress"
    t.text "suburb"
    t.integer "postcode"
    t.integer "rooms"
    t.integer "livingrooms"
    t.integer "bathrooms"
    t.integer "toilets"
    t.integer "garage"
    t.integer "pspace"
    t.integer "rent"
    t.text "photos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "bedrooms"
    t.text "gallery"
    t.boolean "availablitly"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.text "surname"
    t.text "mobile"
    t.text "phone"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.boolean "premium"
  end

end
