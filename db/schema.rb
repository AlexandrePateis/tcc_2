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

ActiveRecord::Schema[7.0].define(version: 2023_09_07_183858) do
  create_table "financial_accounts", force: :cascade do |t|
    t.string "bank", null: false
    t.string "name_account"
    t.integer "number_account", null: false
    t.integer "agency", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_financial_accounts_on_user_id"
  end

  create_table "form_of_payments", force: :cascade do |t|
    t.string "name"
    t.integer "financial_account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["financial_account_id"], name: "index_form_of_payments_on_financial_account_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.boolean "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.text "observation"
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name", null: false
    t.string "cnpj"
    t.string "phone"
    t.string "responsible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_hotels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.date "birthdate"
    t.string "cpf"
    t.boolean "gender"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "financial_accounts", "users"
  add_foreign_key "form_of_payments", "financial_accounts"
  add_foreign_key "guests", "users"
  add_foreign_key "hotels", "users"
end
