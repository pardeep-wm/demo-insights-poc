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

ActiveRecord::Schema[7.0].define(version: 2023_02_23_103705) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assessment_results", force: :cascade do |t|
    t.integer "submitter_id"
    t.integer "assessor_id"
    t.bigint "course_id"
    t.bigint "section_id"
    t.bigint "group_term_id"
    t.string "activity_name"
    t.string "group_term_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_assessment_results_on_course_id"
    t.index ["group_term_id"], name: "index_assessment_results_on_group_term_id"
    t.index ["section_id"], name: "index_assessment_results_on_section_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "code"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_courses_on_organization_id"
  end

  create_table "group_terms", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "code"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_group_terms_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rubric_mappings", force: :cascade do |t|
    t.bigint "assessment_result_id"
    t.bigint "rubric_id"
    t.jsonb "performance", default: "{}", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_result_id"], name: "index_rubric_mappings_on_assessment_result_id"
    t.index ["rubric_id"], name: "index_rubric_mappings_on_rubric_id"
  end

  create_table "rubrics", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "state"
    t.string "type"
    t.bigint "user_id"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_rubrics_on_organization_id"
    t.index ["user_id"], name: "index_rubrics_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "group_code"
    t.string "display_log_type"
    t.text "owner_ids", default: [], array: true
    t.bigint "group_term_id"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_term_id"], name: "index_sections_on_group_term_id"
    t.index ["organization_id"], name: "index_sections_on_organization_id"
  end

  create_table "statement_mappings", force: :cascade do |t|
    t.bigint "assessment_result_id"
    t.bigint "statement_id"
    t.string "met"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_result_id"], name: "index_statement_mappings_on_assessment_result_id"
    t.index ["statement_id"], name: "index_statement_mappings_on_statement_id"
  end

  create_table "statement_sets", force: :cascade do |t|
    t.bigint "organization_id"
    t.string "title"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_statement_sets_on_organization_id"
  end

  create_table "statements", force: :cascade do |t|
    t.bigint "statement_set_id"
    t.string "title"
    t.string "statement_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["statement_set_id"], name: "index_statements_on_statement_set_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "email"
    t.string "role"
    t.string "major"
    t.string "ethnicity"
    t.boolean "first_generation_student"
    t.boolean "transfer_student"
    t.boolean "pell_eligibility"
    t.string "academic_program"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "fki_user_organization"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "assessment_results", "users", column: "assessor_id"
  add_foreign_key "assessment_results", "users", column: "submitter_id"
  add_foreign_key "users", "organizations", name: "user_organization"
end
