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

ActiveRecord::Schema.define(version: 20170609050240) do

  create_table "agencies", force: :cascade do |t|
    t.string   "code"
    t.string   "logo"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents", force: :cascade do |t|
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
    t.string   "firstname"
    t.string   "lastname"
    t.string   "license"
    t.string   "jpg"
    t.integer  "agency_id"
    t.string   "code"
    t.boolean  "is_mga"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_agents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_agents_on_reset_password_token", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.time     "appt_time"
    t.date     "appt_date"
    t.integer  "lead_id"
    t.integer  "agent_id"
    t.string   "outcome"
    t.text     "notes"
    t.integer  "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "status"
    t.string   "premium"
    t.string   "pdf"
    t.integer  "agent_id"
    t.string   "hphone"
    t.string   "wphone"
    t.string   "cphone"
    t.string   "dob"
    t.string   "sdob"
    t.boolean  "smoker"
    t.boolean  "spousesmoke"
    t.string   "email"
    t.text     "notes"
    t.string   "occupation"
    t.string   "policy"
    t.integer  "agency_id"
    t.integer  "bullet1"
    t.integer  "bullet2"
    t.integer  "bullet3"
    t.integer  "bullet4"
    t.integer  "bullet5"
    t.integer  "bullet6"
    t.integer  "bullet7"
    t.integer  "mortamt"
    t.integer  "batchno"
    t.integer  "recno"
    t.string   "dw_agn"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "zipcodes", force: :cascade do |t|
    t.integer  "zipcode"
    t.integer  "agency_id"
    t.string   "county"
    t.string   "state"
    t.integer  "agent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
