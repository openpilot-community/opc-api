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

ActiveRecord::Schema.define(version: 2018_08_10_004320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["hardware_type_id"], name: "index_hardware_items_on_hardware_type_id"
  end

  create_table "hardware_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string "identification", null: false
    t.string "password_digest"
    t.string "oauth2_token", null: false
    t.string "uid"
    t.string "single_use_oauth2_token"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.index ["user_id"], name: "index_logins_on_user_id"
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

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "slack_username"
    t.string "github_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_url"
  end

  create_table "vehicle_capabilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_config_capabilities", force: :cascade do |t|
    t.bigint "vehicle_config_id"
    t.bigint "vehicle_capability_id"
    t.integer "kph"
    t.integer "timeout"
    t.boolean "confirmed"
    t.integer "confirmed_by"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vehicle_config_type_id"
    t.index ["vehicle_capability_id"], name: "index_vehicle_config_capabilities_on_vehicle_capability_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_capabilities_on_vehicle_config_id"
    t.index ["vehicle_config_type_id"], name: "index_vehicle_config_capabilities_on_vehicle_config_type_id"
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

  create_table "vehicle_config_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "difficulty_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "slug", null: false
    t.bigint "vehicle_make_package_id"
    t.index ["slug"], name: "index_vehicle_configs_on_slug", unique: true
    t.index ["vehicle_config_status_id"], name: "index_vehicle_configs_on_vehicle_config_status_id"
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
    t.index ["vehicle_make_id"], name: "index_vehicle_make_packages_on_vehicle_make_id"
  end

  create_table "vehicle_makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug", null: false
    t.index ["slug"], name: "index_vehicle_makes_on_slug", unique: true
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
    t.string "slug", null: false
    t.index ["slug"], name: "index_vehicle_models_on_slug", unique: true
    t.index ["vehicle_make_id"], name: "index_vehicle_models_on_vehicle_make_id"
  end

  create_table "vehicle_option_availabilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "vehicle_trims", force: :cascade do |t|
    t.bigint "vehicle_make_id"
    t.bigint "vehicle_model_id"
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
    t.index ["vehicle_make_id"], name: "index_vehicle_trims_on_vehicle_make_id"
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

  add_foreign_key "hardware_items", "hardware_types"
  add_foreign_key "vehicle_config_capabilities", "vehicle_capabilities"
  add_foreign_key "vehicle_config_capabilities", "vehicle_configs"
  add_foreign_key "vehicle_config_required_options", "vehicle_configs"
  add_foreign_key "vehicle_config_required_options", "vehicle_options"
  add_foreign_key "vehicle_config_required_packages", "vehicle_configs"
  add_foreign_key "vehicle_config_required_packages", "vehicle_make_packages"
  add_foreign_key "vehicle_configs", "vehicle_config_statuses"
  add_foreign_key "vehicle_configs", "vehicle_make_packages"
  add_foreign_key "vehicle_configs", "vehicle_makes"
  add_foreign_key "vehicle_configs", "vehicle_models"
  add_foreign_key "vehicle_configs", "vehicle_trims"
  add_foreign_key "vehicle_make_packages", "vehicle_makes"
  add_foreign_key "vehicle_model_options", "vehicle_makes"
  add_foreign_key "vehicle_model_options", "vehicle_models"
  add_foreign_key "vehicle_model_options", "vehicle_option_availabilities"
  add_foreign_key "vehicle_model_options", "vehicle_options"
  add_foreign_key "vehicle_models", "vehicle_makes"
  add_foreign_key "vehicle_trims", "vehicle_makes"
  add_foreign_key "vehicle_trims", "vehicle_models"
end
