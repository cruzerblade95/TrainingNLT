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

ActiveRecord::Schema.define(version: 2019_03_18_021358) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "bank_name"
    t.integer "bank_account_no"
    t.string "account_type"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_bank_accounts_on_personal_detail_id"
  end

  create_table "beneficiaries", force: :cascade do |t|
    t.string "ben_name"
    t.integer "ben_nric"
    t.string "ben_relationship"
    t.string "ben_percentage"
    t.string "ben_tel_no"
    t.string "ben_hp_no"
    t.text "ben_perm_address"
    t.integer "ben_postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "children", force: :cascade do |t|
    t.string "children_name"
    t.integer "children_nric"
    t.integer "children_age"
    t.string "children_sex"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_children_on_personal_detail_id"
  end

  create_table "honors_and_awards", force: :cascade do |t|
    t.string "honor_or_award"
    t.string "grantor"
    t.date "date_received"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_honors_and_awards_on_personal_detail_id"
  end

  create_table "legal_spouses", force: :cascade do |t|
    t.string "spouse_name"
    t.integer "spouse_nric"
    t.date "spouse_dob"
    t.integer "spouse_age"
    t.string "spouse_pob"
    t.string "spouse_race"
    t.string "spouse_religion"
    t.string "spouse_tel_no"
    t.string "spouse_hp_no"
    t.string "spouse_occupation"
    t.text "spouse_perm_address"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_legal_spouses_on_personal_detail_id"
  end

  create_table "payrolls", force: :cascade do |t|
    t.integer "epf_no"
    t.integer "socso_no"
    t.integer "income_tax_no"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_payrolls_on_personal_detail_id"
  end

  create_table "personal_details", force: :cascade do |t|
    t.string "staff_name"
    t.integer "staff_nric"
    t.date "staff_dob"
    t.string "staff_sex"
    t.string "staff_pob"
    t.string "staff_race"
    t.string "staff_religion"
    t.string "staff_marital_status"
    t.text "staff_perm_address"
    t.integer "staff_postcode"
    t.string "staff_state"
    t.string "staff_tel_no"
    t.string "staff_hp_no"
    t.text "staff_corr_address"
    t.string "staff_employ_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pins", force: :cascade do |t|
    t.string "text1"
    t.text "text2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_memberships", force: :cascade do |t|
    t.string "association"
    t.string "institution"
    t.string "duration_date"
    t.string "annual_subs"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_professional_memberships_on_personal_detail_id"
  end

  create_table "qualification_details", force: :cascade do |t|
    t.string "qualification"
    t.string "sub_disc"
    t.string "sch_col_uni"
    t.date "year"
    t.string "duration"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_qualification_details_on_personal_detail_id"
  end

  create_table "relatives", force: :cascade do |t|
    t.string "relative_name"
    t.integer "relative_nric"
    t.string "relative_relationship"
    t.string "relative_tel_no"
    t.string "relative_hp_no"
    t.text "relative_perm_address"
    t.integer "relative_postcode"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_relatives_on_personal_detail_id"
  end

  create_table "training_attendeds", force: :cascade do |t|
    t.string "training"
    t.string "status"
    t.integer "duration_training"
    t.string "training_institute"
    t.string "training_place"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_training_attendeds_on_personal_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "working_experiences", force: :cascade do |t|
    t.string "company_name"
    t.string "designation"
    t.text "reason_leaving"
    t.date "year"
    t.string "duration"
    t.integer "personal_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_detail_id"], name: "index_working_experiences_on_personal_detail_id"
  end

end
