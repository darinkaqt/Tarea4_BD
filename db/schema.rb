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

ActiveRecord::Schema.define(version: 2020_08_08_220520) do

  create_table "buy_options", force: :cascade do |t|
    t.integer "material_id", null: false
    t.string "company_name", limit: 20
    t.integer "price"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_buy_options_on_material_id"
  end

  create_table "component_in_machines", force: :cascade do |t|
    t.integer "component_id", null: false
    t.integer "machine_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["component_id"], name: "index_component_in_machines_on_component_id"
    t.index ["machine_id"], name: "index_component_in_machines_on_machine_id"
  end

  create_table "component_materials", force: :cascade do |t|
    t.integer "component_id", null: false
    t.integer "material_id", null: false
    t.integer "quantity"
    t.string "measure_unit", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["component_id"], name: "index_component_materials_on_component_id"
    t.index ["material_id"], name: "index_component_materials_on_material_id"
  end

  create_table "components", force: :cascade do |t|
    t.string "description", limit: 100
    t.integer "resistance_impact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name_faction", limit: 30
    t.integer "rebel?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "machine_in_sections", force: :cascade do |t|
    t.integer "machine_id", null: false
    t.integer "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["machine_id"], name: "index_machine_in_sections_on_machine_id"
    t.index ["section_id"], name: "index_machine_in_sections_on_section_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "model", limit: 30
    t.string "type", limit: 45
    t.string "description", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer "planet_id", null: false
    t.string "name", limit: 50
    t.string "description", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_id"], name: "index_materials_on_planet_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", limit: 25
    t.string "lastname", limit: 30
    t.integer "age"
    t.integer "planet_id", null: false
    t.integer "faction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faction_id"], name: "index_people_on_faction_id"
    t.index ["planet_id"], name: "index_people_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name_local", limit: 45
    t.integer "faction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faction_id"], name: "index_planets_on_faction_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "coordinate", limit: 5
    t.string "specialization", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "buy_options", "materials"
  add_foreign_key "component_in_machines", "components"
  add_foreign_key "component_in_machines", "machines"
  add_foreign_key "component_materials", "components"
  add_foreign_key "component_materials", "materials"
  add_foreign_key "machine_in_sections", "machines"
  add_foreign_key "machine_in_sections", "sections"
  add_foreign_key "materials", "planets"
  add_foreign_key "people", "factions"
  add_foreign_key "people", "planets"
  add_foreign_key "planets", "factions"
end
