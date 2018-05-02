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

ActiveRecord::Schema.define(version: 20180502093848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_of_permissions", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_book_of_permissions_on_student_id", using: :btree
  end

  create_table "calendar_details", force: :cascade do |t|
    t.string   "name"
    t.date     "init_date"
    t.text     "description"
    t.integer  "calendar_id"
    t.integer  "calendar_tag_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["calendar_id"], name: "index_calendar_details_on_calendar_id", using: :btree
    t.index ["calendar_tag_id"], name: "index_calendar_details_on_calendar_tag_id", using: :btree
  end

  create_table "calendar_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.string   "name"
    t.integer  "management_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["management_id"], name: "index_calendars_on_management_id", using: :btree
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.integer  "management_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["management_id"], name: "index_grades_on_management_id", using: :btree
  end

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "parallel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["parallel_id"], name: "index_inscriptions_on_parallel_id", using: :btree
    t.index ["student_id"], name: "index_inscriptions_on_student_id", using: :btree
  end

  create_table "list_of_children", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_list_of_children_on_student_id", using: :btree
    t.index ["user_id"], name: "index_list_of_children_on_user_id", using: :btree
  end

  create_table "managements", force: :cascade do |t|
    t.string   "name"
    t.date     "init_date"
    t.date     "finish_date"
    t.integer  "turn_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["turn_id"], name: "index_managements_on_turn_id", using: :btree
  end

  create_table "parallels", force: :cascade do |t|
    t.string   "name"
    t.integer  "grade_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_parallels_on_grade_id", using: :btree
    t.index ["user_id"], name: "index_parallels_on_user_id", using: :btree
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "reason"
    t.text     "description"
    t.string   "status"
    t.date     "init_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "planner_details", force: :cascade do |t|
    t.string   "name"
    t.date     "init_date"
    t.text     "description"
    t.text     "response"
    t.string   "status"
    t.integer  "planner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["planner_id"], name: "index_planner_details_on_planner_id", using: :btree
  end

  create_table "planners", force: :cascade do |t|
    t.string   "name"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_planners_on_student_id", using: :btree
  end

  create_table "ponderations", force: :cascade do |t|
    t.integer  "value"
    t.text     "observation"
    t.integer  "student_id"
    t.integer  "pondered_activity_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["pondered_activity_id"], name: "index_ponderations_on_pondered_activity_id", using: :btree
    t.index ["student_id"], name: "index_ponderations_on_student_id", using: :btree
  end

  create_table "pondered_activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "init_date"
    t.integer  "pondered_planner_id"
    t.integer  "subject_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["pondered_planner_id"], name: "index_pondered_activities_on_pondered_planner_id", using: :btree
    t.index ["subject_id"], name: "index_pondered_activities_on_subject_id", using: :btree
  end

  create_table "pondered_planners", force: :cascade do |t|
    t.string   "name"
    t.integer  "parallel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["parallel_id"], name: "index_pondered_planners_on_parallel_id", using: :btree
  end

  create_table "schedule_details", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "init_date"
    t.string   "tag"
    t.integer  "schedule_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["schedule_id"], name: "index_schedule_details_on_schedule_id", using: :btree
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "name"
    t.integer  "parallel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["parallel_id"], name: "index_schedules_on_parallel_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.integer  "rude"
    t.string   "name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "ci"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "book_of_permissions", "students"
  add_foreign_key "calendar_details", "calendar_tags"
  add_foreign_key "calendar_details", "calendars"
  add_foreign_key "calendars", "managements"
  add_foreign_key "grades", "managements"
  add_foreign_key "inscriptions", "parallels"
  add_foreign_key "inscriptions", "students"
  add_foreign_key "list_of_children", "students"
  add_foreign_key "list_of_children", "users"
  add_foreign_key "managements", "turns"
  add_foreign_key "parallels", "grades"
  add_foreign_key "parallels", "users"
  add_foreign_key "planner_details", "planners"
  add_foreign_key "planners", "students"
  add_foreign_key "ponderations", "pondered_activities"
  add_foreign_key "ponderations", "students"
  add_foreign_key "pondered_activities", "pondered_planners"
  add_foreign_key "pondered_activities", "subjects"
  add_foreign_key "pondered_planners", "parallels"
  add_foreign_key "schedule_details", "schedules"
  add_foreign_key "schedules", "parallels"
end
