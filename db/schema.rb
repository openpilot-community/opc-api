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

ActiveRecord::Schema.define(version: 2018_08_09_030017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["vehicle_capability_id"], name: "index_vehicle_config_capabilities_on_vehicle_capability_id"
    t.index ["vehicle_config_id"], name: "index_vehicle_config_capabilities_on_vehicle_config_id"
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
    t.index ["slug"], name: "index_vehicle_configs_on_slug", unique: true
    t.index ["vehicle_config_status_id"], name: "index_vehicle_configs_on_vehicle_config_status_id"
    t.index ["vehicle_make_id"], name: "index_vehicle_configs_on_vehicle_make_id"
    t.index ["vehicle_model_id"], name: "index_vehicle_configs_on_vehicle_model_id"
    t.index ["vehicle_trim_id"], name: "index_vehicle_configs_on_vehicle_trim_id"
  end

  create_table "vehicle_makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug", null: false
    t.index ["slug"], name: "index_vehicle_makes_on_slug", unique: true
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

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "hardware_items", "hardware_types"
  add_foreign_key "vehicle_config_capabilities", "vehicle_capabilities"
  add_foreign_key "vehicle_config_capabilities", "vehicle_configs"
  add_foreign_key "vehicle_configs", "vehicle_config_statuses"
  add_foreign_key "vehicle_configs", "vehicle_makes"
  add_foreign_key "vehicle_configs", "vehicle_models"
  add_foreign_key "vehicle_configs", "vehicle_trims"
  add_foreign_key "vehicle_models", "vehicle_makes"
  add_foreign_key "vehicle_trims", "vehicle_makes"
  add_foreign_key "vehicle_trims", "vehicle_models"
end
