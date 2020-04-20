# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_20_025154) do

  create_table "document_state_rels", force: :cascade do |t|
    t.datetime "date"
    t.string "name"
    t.string "description"
    t.string "obs"
    t.integer "user_id", null: false
    t.integer "document_id", null: false
    t.integer "document_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_id"], name: "index_document_state_rels_on_document_id"
    t.index ["document_state_id"], name: "index_document_state_rels_on_document_state_id"
    t.index ["user_id"], name: "index_document_state_rels_on_user_id"
  end

  create_table "document_states", force: :cascade do |t|
    t.string "name"
    t.string "format"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer "document_type_id", null: false
    t.string "doc_code"
    t.integer "supplier_id", null: false
    t.integer "user_id", null: false
    t.date "date_emission"
    t.date "date_due"
    t.string "description"
    t.decimal "total_amount"
    t.string "obs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_type_id"], name: "index_documents_on_document_type_id"
    t.index ["supplier_id"], name: "index_documents_on_supplier_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "doc_ident"
    t.string "street"
    t.string "email"
    t.integer "mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "document_state_rels", "document_states"
  add_foreign_key "document_state_rels", "documents"
  add_foreign_key "document_state_rels", "users"
  add_foreign_key "documents", "document_types"
  add_foreign_key "documents", "suppliers"
  add_foreign_key "documents", "users"
end
