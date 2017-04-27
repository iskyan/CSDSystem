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

ActiveRecord::Schema.define(version: 20170426070317) do

  create_table "educations", force: :cascade do |t|
    t.string   "education_period", null: false
    t.string   "education_type",   null: false
    t.string   "faculty",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "profile_roles", force: :cascade do |t|
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "username",                            null: false
    t.string   "name"
    t.string   "surname"
    t.string   "address"
    t.string   "phone"
    t.date     "date_of_birth"
    t.string   "gender"
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
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true
  end

  create_table "skills", force: :cascade do |t|
    t.string   "organizational_skill", null: false
    t.string   "publication",          null: false
    t.string   "project",              null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string   "work_period", null: false
    t.string   "position",    null: false
    t.string   "place",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
