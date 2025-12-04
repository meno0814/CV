# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_11_13_090853) do
  create_table "contact_infos", force: :cascade do |t|
    t.string "address"
    t.string "phone_number"
    t.string "link"
    t.string "email"
    t.integer "personal_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_info_id"], name: "index_contact_infos_on_personal_info_id"
  end

  create_table "educational_backgrounds", force: :cascade do |t|
    t.string "educational_level"
    t.string "course"
    t.string "school"
    t.date "date_attended"
    t.date "date_graduated"
    t.integer "personal_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_info_id"], name: "index_educational_backgrounds_on_personal_info_id"
  end

  create_table "personal_infos", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "extension"
    t.date "dob"
    t.string "civil_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
  end

  create_table "skills", force: :cascade do |t|
    t.string "type_of_skill"
    t.string "level_of_proficiency"
    t.integer "personal_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_info_id"], name: "index_skills_on_personal_info_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "company_name"
    t.string "position"
    t.date "start_date"
    t.date "end_date"
    t.integer "personal_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_info_id"], name: "index_work_experiences_on_personal_info_id"
  end

  add_foreign_key "contact_infos", "personal_infos"
  add_foreign_key "educational_backgrounds", "personal_infos"
  add_foreign_key "skills", "personal_infos"
  add_foreign_key "work_experiences", "personal_infos"
end
