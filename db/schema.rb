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

ActiveRecord::Schema.define(version: 2021_01_21_194710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "activity_logs", force: :cascade do |t|
    t.string "uid"
    t.bigint "user_id"
    t.string "browser"
    t.string "ip_address"
    t.string "controller"
    t.string "action"
    t.string "params"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activity_logs_on_user_id"
  end

  create_table "api_keys", force: :cascade do |t|
    t.string "client_id"
    t.string "api_key"
    t.string "api_secret"
    t.string "access_token"
    t.string "refresh_token"
    t.string "status", default: "active"
    t.datetime "access_token_expire_at"
    t.datetime "refresh_token_expire_at"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_api_keys_on_user_id"
  end

  create_table "campaign_contactbooks", force: :cascade do |t|
    t.string "uuid"
    t.bigint "contact_book_id"
    t.bigint "campaign_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_contactbooks_on_campaign_id"
    t.index ["contact_book_id"], name: "index_campaign_contactbooks_on_contact_book_id"
    t.index ["user_id"], name: "index_campaign_contactbooks_on_user_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "uuid"
    t.string "title"
    t.text "content"
    t.datetime "start_date"
    t.datetime "start_hour"
    t.string "status"
    t.boolean "start_immediatly"
    t.text "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "card_orders", force: :cascade do |t|
    t.string "uid"
    t.string "civility"
    t.string "first_name"
    t.string "last_name"
    t.datetime "birth_date"
    t.string "nationality"
    t.bigint "identity_type_id"
    t.string "identity_number"
    t.string "profession"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "mobile_phone_number"
    t.string "home_phone_number"
    t.string "work_phone_number"
    t.string "name_on_card"
    t.boolean "uba_customer"
    t.bigint "uba_account_type_id"
    t.string "uba_account_number"
    t.string "email"
    t.bigint "card_type_id"
    t.integer "quantity"
    t.string "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_type_id"], name: "index_card_orders_on_card_type_id"
    t.index ["identity_type_id"], name: "index_card_orders_on_identity_type_id"
    t.index ["uba_account_type_id"], name: "index_card_orders_on_uba_account_type_id"
  end

  create_table "card_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_card_types_on_user_id"
  end

  create_table "contact_books", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.string "status"
    t.string "slug"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contact_books_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "uuid"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "main_phone_number"
    t.string "email"
    t.string "country"
    t.string "city"
    t.string "address"
    t.string "status"
    t.string "slug"
    t.text "notes"
    t.bigint "contact_book_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_book_id"], name: "index_contacts_on_contact_book_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identity_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identity_types_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.text "uid"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "permission_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "permission_id"
    t.string "action_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_items_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "uid"
    t.bigint "feature_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_permissions_on_feature_id"
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_categories_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "product_category_id"
    t.string "name"
    t.string "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "address"
    t.string "phone"
    t.text "description"
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uba_account_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_uba_account_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.bigint "role_id"
    t.string "uuid"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "watch_lists", force: :cascade do |t|
    t.string "uid"
    t.string "serial_number"
    t.string "full_name"
    t.string "program_list"
    t.string "office"
    t.text "additional_information"
    t.string "party_country"
    t.string "watchlist_populated_author"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_watch_lists_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "activity_logs", "users"
  add_foreign_key "api_keys", "users"
  add_foreign_key "campaign_contactbooks", "campaigns"
  add_foreign_key "campaign_contactbooks", "contact_books"
  add_foreign_key "campaign_contactbooks", "users"
  add_foreign_key "campaigns", "users"
  add_foreign_key "card_orders", "card_types"
  add_foreign_key "card_orders", "identity_types"
  add_foreign_key "card_orders", "uba_account_types"
  add_foreign_key "card_types", "users"
  add_foreign_key "contact_books", "users"
  add_foreign_key "contacts", "contact_books"
  add_foreign_key "contacts", "users"
  add_foreign_key "identity_types", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "permission_items", "permissions"
  add_foreign_key "permissions", "features"
  add_foreign_key "permissions", "roles"
  add_foreign_key "product_categories", "users"
  add_foreign_key "products", "product_categories"
  add_foreign_key "products", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "uba_account_types", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "watch_lists", "users"
end
