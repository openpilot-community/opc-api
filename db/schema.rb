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

ActiveRecord::Schema.define(version: 2018_08_26_152135) do

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

  create_table "contributors", force: :cascade do |t|
    t.string "username"
    t.string "avatar_url"
    t.string "html_url"
    t.integer "contributions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "guides", force: :cascade do |t|
    t.string "title"
    t.text "markdown"
    t.text "markup"
    t.string "slug"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guides_on_user_id"
  end

  create_table "hardware_items", force: :cascade do |t|
    t.string "name"
    t.string "alternate_name"
    t.text "description"
    t.bigint "hardware_type_id"
    t.boolean "compatible_with_all_vehicles"
    t.boolean "available_for_purchase"
    t.string "purchase_url"
    t.boolean "requires_assembly"
    t.boolean "can_be_built"
    t.string "build_plans_url"
    t.text "notes"
    t.string "image_url"
    t.string "install_guide_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["hardware_type_id"], name: "index_hardware_items_on_hardware_type_id"
    t.index ["slug"], name: "index_hardware_items_on_slug", unique: true
  end

  create_table "hardware_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_hardware_types_on_slug", unique: true
  end

  create_table "modification_hardware_type_hardware_items", force: :cascade do |t|
    t.bigint "modification_hardware_type_id"
    t.bigint "hardware_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_item_id"], name: "ix_mht_hi_hi"
    t.index ["modification_hardware_type_id"], name: "ix_mht_hi_ht"
  end

  create_table "modification_hardware_types", force: :cascade do |t|
    t.bigint "modification_id"
    t.bigint "hardware_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_type_id"], name: "index_modification_hardware_types_on_hardware_type_id"
    t.index ["modification_id"], name: "index_modification_hardware_types_on_modification_id"
  end

  create_table "modifications", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.text "description"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_modifications_on_slug", unique: true
  end

  create_table "pull_requests", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "title"
    t.string "state"
    t.string "locked"
    t.string "user"
    t.string "body"
    t.string "pr_created_at"
    t.string "pr_updated_at"
    t.string "closed_at"
    t.string "merged_at"
    t.string "merge_commit_sha"
    t.string "head"
    t.string "author_association"
    t.string "html_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rails_admin_settings", id: :serial, force: :cascade do |t|
    t.boolean "enabled", default: true
    t.string "kind", default: "string", null: false
    t.string "ns", default: "main"
    t.string "key", null: false
    t.text "raw"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_rails_admin_settings_on_key"
    t.index ["ns", "key"], name: "index_rails_admin_settings_on_ns_and_key", unique: true
  end

  create_table "repositories", force: :cascade do |t|
    t.string "name"
    t.string "full_name"
    t.string "owner_login"
    t.string "owner_avatar_url"
    t.string "owner_url"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "slack_username"
    t.string "github_username"
    t.bigint "user_role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

  create_table "vehicle_capabilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_vehicle_capabilities_on_slug", unique: true
  end

  create_table "vehicle_config_capabilities", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "vehicle_capability_id"
    t.integer "kph"
    t.integer "timeout"
    t.boolean "confirmed"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vehicle_config_type_id"
    t.bigint "confirmed_by_id"
    t.index ["confirmed_by_id"], name: "index_vehicle_config_capabilities_on_confirmed_by_id"
    t.index ["vehicle_capability_id"], name: "index_vehicle_config_capabilities_on_vehicle_capability_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_capabilities_on_vehicle_config_id"
    t.index ["vehicle_config_type_id"], name: "index_vehicle_config_capabilities_on_vehicle_config_type_id"
  end

  create_table "vehicle_config_hardware_items", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "hardware_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_item_id"], name: "index_vehicle_config_hardware_items_on_hardware_item_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_hardware_items_on_vehicle_config_id"
  end

  create_table "vehicle_config_modifications", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "modification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["modification_id"], name: "index_vehicle_config_modifications_on_modification_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_modifications_on_vehicle_config_id"
  end

  create_table "vehicle_config_pull_requests", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "pull_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pull_request_id"], name: "index_vehicle_config_pull_requests_on_pull_request_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_pull_requests_on_vehicle_config_id"
  end

  create_table "vehicle_config_repositories", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "repository_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repository_id"], name: "index_vehicle_config_repositories_on_repository_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_repositories_on_vehicle_config_id"
  end

  create_table "vehicle_config_required_options", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "vehicle_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_config_id"], name: "vehicle_config_option"
    t.index ["vehicle_option_id"], name: "vehicle_config_option_link"
  end

  create_table "vehicle_config_required_packages", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "vehicle_make_package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_config_id"], name: "vehicle_config_package"
    t.index ["vehicle_make_package_id"], name: "vehicle_config_package_link"
  end

  create_table "vehicle_config_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_config_trims", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "vehicle_trim_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_config_id"], name: "index_vehicle_config_trims_on_vehicle_config_id"
    t.index ["vehicle_trim_id"], name: "index_vehicle_config_trims_on_vehicle_trim_id"
  end

  create_table "vehicle_config_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "difficulty_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_vehicle_config_types_on_slug", unique: true
  end

  create_table "vehicle_config_videos", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_config_id"], name: "index_vehicle_config_videos_on_vehicle_config_id"
    t.index ["video_id"], name: "index_vehicle_config_videos_on_video_id"
  end

  create_table "vehicle_configs", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.bigint "vehicle_make_id"
    t.bigint "vehicle_model_id"
    t.bigint "vehicle_trim_id"
    t.bigint "vehicle_config_status_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vehicle_make_package_id"
    t.string "slug"
    t.bigint "vehicle_config_type_id"
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.integer "children_count"
    t.integer "year_end"
    t.index ["depth"], name: "index_vehicle_configs_on_depth"
    t.index ["lft"], name: "index_vehicle_configs_on_lft"
    t.index ["parent_id"], name: "index_vehicle_configs_on_parent_id"
    t.index ["rgt"], name: "index_vehicle_configs_on_rgt"
    t.index ["vehicle_config_status_id"], name: "index_vehicle_configs_on_vehicle_config_status_id"
    t.index ["vehicle_config_type_id"], name: "index_vehicle_configs_on_vehicle_config_type_id"
    t.index ["vehicle_make_id"], name: "index_vehicle_configs_on_vehicle_make_id"
    t.index ["vehicle_make_package_id"], name: "index_vehicle_configs_on_vehicle_make_package_id"
    t.index ["vehicle_model_id"], name: "index_vehicle_configs_on_vehicle_model_id"
    t.index ["vehicle_trim_id"], name: "index_vehicle_configs_on_vehicle_trim_id"
  end

  create_table "vehicle_make_packages", force: :cascade do |t|
    t.string "name"
    t.bigint "vehicle_make_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_vehicle_make_packages_on_slug", unique: true
    t.index ["vehicle_make_id"], name: "index_vehicle_make_packages_on_vehicle_make_id"
  end

  create_table "vehicle_makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slack_channel"
    t.string "slug"
  end

  create_table "vehicle_model_options", force: :cascade do |t|
    t.integer "vehicle_year"
    t.bigint "vehicle_make_id"
    t.bigint "vehicle_model_id"
    t.bigint "vehicle_option_id"
    t.bigint "vehicle_option_availability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_make_id"], name: "index_vehicle_model_options_on_vehicle_make_id"
    t.index ["vehicle_model_id"], name: "index_vehicle_model_options_on_vehicle_model_id"
    t.index ["vehicle_option_availability_id"], name: "index_vehicle_model_options_on_vehicle_option_availability_id"
    t.index ["vehicle_option_id"], name: "index_vehicle_model_options_on_vehicle_option_id"
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "name"
    t.bigint "vehicle_make_id"
    t.string "tmp_make_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "status", default: 1
    t.index ["vehicle_make_id"], name: "index_vehicle_models_on_vehicle_make_id"
  end

  create_table "vehicle_option_availabilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_vehicle_option_availabilities_on_slug", unique: true
  end

  create_table "vehicle_options", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alternate_name"
    t.text "what_it_does"
    t.text "what_it_doesnt_do"
    t.string "reference_url"
    t.string "slug"
    t.index ["slug"], name: "index_vehicle_options_on_slug", unique: true
  end

  create_table "vehicle_specs", force: :cascade do |t|
    t.string "make_id"
    t.string "make_display"
    t.string "name"
    t.string "trim"
    t.string "year"
    t.string "body"
    t.string "engine_position"
    t.integer "engine_cc"
    t.integer "engine_cyl"
    t.string "engine_type"
    t.integer "engine_valves_per_cyl"
    t.string "engine_power_ps"
    t.integer "engine_power_rpm"
    t.string "engine_torque_nm"
    t.integer "engine_torque_rpm"
    t.float "engine_bore_mm"
    t.float "engine_stroke_mm"
    t.string "engine_compression"
    t.string "engine_fuel"
    t.integer "top_speed_kph"
    t.integer "zero_to_100_kph"
    t.string "drive"
    t.string "drive2"
    t.integer "seats"
    t.integer "seats2"
    t.integer "weight_kg"
    t.float "length_mm"
    t.float "width_mm"
    t.float "height_mm"
    t.float "wheelbase_mm"
    t.float "lkm_hwy"
    t.float "lkm_mixed"
    t.float "lkm_city"
    t.integer "fuel_cap_l"
    t.boolean "sold_in_us"
    t.string "co2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "forward_collision_warning"
    t.integer "adaptive_cruise_control"
    t.integer "lane_departure_warning"
    t.integer "lane_keeping_assist"
    t.integer "blind_spot_warning"
    t.integer "rear_cross_traffic_alert"
    t.integer "back_up_camera"
    t.integer "adaptive_headlights"
    t.integer "antilock_braking_system"
    t.integer "automatic_emergency_braking"
    t.integer "automatic_parallel_parking"
    t.integer "backup_warning"
    t.integer "biycle_detection"
    t.integer "blind_spot_monitoring"
    t.integer "brake_assist"
    t.integer "curve_speed_warning"
    t.integer "drowsiness_alert"
    t.integer "electronic_stability_control"
    t.integer "high_speed_alert"
    t.integer "hill_descent_assist"
    t.integer "hill_start_assist"
    t.integer "left_turn_crash_avoidance"
    t.integer "pedestrian_detection"
    t.integer "push_button_start"
    t.integer "sideview_camera"
    t.integer "temperature_warning"
    t.integer "tire_pressure_monitoring_system"
    t.integer "traction_control"
    t.integer "obstacle_detection"
  end

  create_table "vehicle_trim_style_specs", force: :cascade do |t|
    t.bigint "vehicle_trim_style_id"
    t.string "name"
    t.string "value"
    t.string "inclusion", default: "standard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group"
    t.index ["vehicle_trim_style_id"], name: "index_vehicle_trim_style_specs_on_vehicle_trim_style_id"
  end

  create_table "vehicle_trim_styles", force: :cascade do |t|
    t.bigint "vehicle_trim_id"
    t.string "name"
    t.string "inventory_prices"
    t.string "mpg"
    t.string "engine"
    t.string "trans"
    t.string "drive"
    t.string "colors"
    t.string "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_trim_id"], name: "index_vehicle_trim_styles_on_vehicle_trim_id"
  end

  create_table "vehicle_trims", force: :cascade do |t|
    t.string "name"
    t.bigint "vehicle_model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort_order", default: 0
    t.integer "year"
    t.index ["vehicle_model_id"], name: "index_vehicle_trims_on_vehicle_model_id"
  end

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.integer "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

  create_table "video_hardware_items", force: :cascade do |t|
    t.bigint "video_id"
    t.bigint "hardware_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hardware_item_id"], name: "index_video_hardware_items_on_hardware_item_id"
    t.index ["video_id"], name: "index_video_hardware_items_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "video_url"
    t.string "provider_name"
    t.string "author"
    t.string "author_url"
    t.string "thumbnail_url"
    t.string "description"
    t.string "html"
    t.string "uploaded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

  add_foreign_key "guides", "users"
  add_foreign_key "hardware_items", "hardware_types"
  add_foreign_key "modification_hardware_type_hardware_items", "hardware_items"
  add_foreign_key "modification_hardware_type_hardware_items", "modification_hardware_types"
  add_foreign_key "modification_hardware_types", "hardware_types"
  add_foreign_key "modification_hardware_types", "modifications"
  add_foreign_key "users", "user_roles"
  add_foreign_key "vehicle_config_capabilities", "users", column: "confirmed_by_id"
  add_foreign_key "vehicle_config_capabilities", "vehicle_capabilities"
  add_foreign_key "vehicle_config_capabilities", "vehicle_configs"
  add_foreign_key "vehicle_config_hardware_items", "hardware_items"
  add_foreign_key "vehicle_config_hardware_items", "vehicle_configs"
  add_foreign_key "vehicle_config_modifications", "modifications"
  add_foreign_key "vehicle_config_modifications", "vehicle_configs"
  add_foreign_key "vehicle_config_pull_requests", "pull_requests"
  add_foreign_key "vehicle_config_pull_requests", "vehicle_configs"
  add_foreign_key "vehicle_config_repositories", "repositories"
  add_foreign_key "vehicle_config_repositories", "vehicle_configs"
  add_foreign_key "vehicle_config_required_options", "vehicle_configs"
  add_foreign_key "vehicle_config_required_options", "vehicle_options"
  add_foreign_key "vehicle_config_required_packages", "vehicle_configs"
  add_foreign_key "vehicle_config_required_packages", "vehicle_make_packages"
  add_foreign_key "vehicle_config_trims", "vehicle_configs"
  add_foreign_key "vehicle_config_trims", "vehicle_trims"
  add_foreign_key "vehicle_config_videos", "vehicle_configs"
  add_foreign_key "vehicle_config_videos", "videos"
  add_foreign_key "vehicle_configs", "vehicle_config_statuses"
  add_foreign_key "vehicle_configs", "vehicle_config_types"
  add_foreign_key "vehicle_configs", "vehicle_make_packages"
  add_foreign_key "vehicle_configs", "vehicle_makes"
  add_foreign_key "vehicle_configs", "vehicle_models"
  add_foreign_key "vehicle_configs", "vehicle_specs", column: "vehicle_trim_id"
  add_foreign_key "vehicle_make_packages", "vehicle_makes"
  add_foreign_key "vehicle_model_options", "vehicle_makes"
  add_foreign_key "vehicle_model_options", "vehicle_models"
  add_foreign_key "vehicle_model_options", "vehicle_option_availabilities"
  add_foreign_key "vehicle_model_options", "vehicle_options"
  add_foreign_key "vehicle_models", "vehicle_makes"
  add_foreign_key "vehicle_trim_style_specs", "vehicle_trim_styles"
  add_foreign_key "vehicle_trim_styles", "vehicle_trims"
  add_foreign_key "vehicle_trims", "vehicle_models"
  add_foreign_key "video_hardware_items", "hardware_items"
  add_foreign_key "video_hardware_items", "videos"
end
