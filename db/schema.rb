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

ActiveRecord::Schema[7.0].define(version: 2023_01_23_000321) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account_number"
    t.bigint "accountable_id", null: false
    t.string "accountable_type", null: false
    t.string "ancestry"
    t.bigint "chart_of_account_id", null: false
    t.datetime "created_at", null: false
    t.string "description"
    t.bigint "fund_id", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_accounts_on_accountable"
    t.index ["ancestry"], name: "index_accounts_on_ancestry"
    t.index ["chart_of_account_id"], name: "index_accounts_on_chart_of_account_id"
    t.index ["fund_id"], name: "index_accounts_on_fund_id"
  end

  create_table "analytic_accounts", force: :cascade do |t|
    t.boolean "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chart_of_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description"
    t.bigint "fund_id", null: false
    t.string "money"
    t.datetime "updated_at", null: false
    t.index ["fund_id"], name: "index_chart_of_accounts_on_fund_id"
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "analytic_account_id", null: false
    t.bigint "chart_of_account_id", null: false
    t.datetime "created_at", null: false
    t.string "description"
    t.integer "entry_type"
    t.bigint "financial_transaction_id", null: false
    t.bigint "fund_id", null: false
    t.datetime "updated_at", null: false
    t.integer "value_cents"
    t.index ["analytic_account_id"], name: "index_entries_on_analytic_account_id"
    t.index ["chart_of_account_id"], name: "index_entries_on_chart_of_account_id"
    t.index ["financial_transaction_id"], name: "index_entries_on_financial_transaction_id"
    t.index ["fund_id"], name: "index_entries_on_fund_id"
  end

  create_table "financial_transactions", force: :cascade do |t|
    t.bigint "chart_of_account_id", null: false
    t.datetime "created_at", null: false
    t.date "date"
    t.string "description"
    t.bigint "fund_id", null: false
    t.datetime "updated_at", null: false
    t.index ["chart_of_account_id"], name: "index_financial_transactions_on_chart_of_account_id"
    t.index ["fund_id"], name: "index_financial_transactions_on_fund_id"
  end

  create_table "funds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "synthetic_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "whitelists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "fund_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["fund_id"], name: "index_whitelists_on_fund_id"
    t.index ["user_id"], name: "index_whitelists_on_user_id"
  end

  add_foreign_key "accounts", "chart_of_accounts"
  add_foreign_key "accounts", "funds"
  add_foreign_key "chart_of_accounts", "funds"
  add_foreign_key "entries", "analytic_accounts"
  add_foreign_key "entries", "chart_of_accounts"
  add_foreign_key "entries", "financial_transactions"
  add_foreign_key "entries", "funds"
  add_foreign_key "financial_transactions", "chart_of_accounts"
  add_foreign_key "financial_transactions", "funds"
  add_foreign_key "whitelists", "funds"
  add_foreign_key "whitelists", "users"
end
