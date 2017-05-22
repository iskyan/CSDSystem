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

ActiveRecord::Schema.define(version: 20170522040107) do

  create_table "computer_skills", force: :cascade do |t|
    t.integer  "computer_skill_list_id"
    t.integer  "skill_level_id"
    t.integer  "profile_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["computer_skill_list_id"], name: "index_computer_skills_on_computer_skill_list_id"
    t.index ["profile_id"], name: "index_computer_skills_on_profile_id"
    t.index ["skill_level_id"], name: "index_computer_skills_on_skill_level_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string   "education_period", null: false
    t.string   "education_type",   null: false
    t.string   "faculty",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "language"
    t.integer  "skill_level_id"
    t.integer  "profile_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["profile_id"], name: "index_languages_on_profile_id"
    t.index ["skill_level_id"], name: "index_languages_on_skill_level_id"
  end

  create_table "professional_skill_lists", force: :cascade do |t|
    t.string   "prof_skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_skills", force: :cascade do |t|
    t.integer  "professional_skill_list_id"
    t.integer  "skill_level_id"
    t.integer  "profile_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["professional_skill_list_id"], name: "index_professional_skills_on_professional_skill_list_id"
    t.index ["profile_id"], name: "index_professional_skills_on_profile_id"
    t.index ["skill_level_id"], name: "index_professional_skills_on_skill_level_id"
  end

  create_table "profile_roles", force: :cascade do |t|
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "username"
    t.string   "name"
    t.string   "surname"
    t.string   "email",                  default: "", null: false
    t.string   "address"
    t.string   "phone"
    t.date     "date_of_birth"
    t.string   "gender"
    t.integer  "profile_role_id"
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
    t.index ["profile_role_id"], name: "index_profiles_on_profile_role_id"
    t.index ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true
  end

  create_table "skill_levels", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "organizational_skill"
    t.string   "publicaton"
    t.string   "project"
    t.integer  "profile_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["profile_id"], name: "index_skills_on_profile_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string   "work_period"
    t.string   "position"
    t.string   "place"
    t.integer  "profile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["profile_id"], name: "index_work_experiences_on_profile_id"
  end

end
