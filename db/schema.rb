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

ActiveRecord::Schema[7.1].define(version: 2025_10_18_171638) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "static_queries", force: :cascade do |t|
    t.string "txt_query"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_response_references", force: :cascade do |t|
    t.string "txt_title_details"
    t.string "txt_section_details"
    t.string "txt_section_content"
    t.bigint "static_response_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["static_response_id"], name: "index_static_response_references_on_static_response_id"
  end

  create_table "static_responses", force: :cascade do |t|
    t.string "txt_scheme"
    t.string "txt_relevant_doc"
    t.string "txt_relevant_doc_section_details"
    t.string "txt_bp_1"
    t.string "txt_bp_2"
    t.string "txt_bp_3"
    t.string "txt_bp_4"
    t.bigint "static_query_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["static_query_id"], name: "index_static_responses_on_static_query_id"
  end

  add_foreign_key "static_response_references", "static_responses"
  add_foreign_key "static_responses", "static_queries"
end
