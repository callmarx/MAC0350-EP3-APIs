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

ActiveRecord::Schema.define(version: 2019_07_07_032417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curriculos", force: :cascade do |t|
    t.integer "adm_id"
    t.string "curso"
    t.string "turma"
    t.integer "credito_acum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adm_id"], name: "index_curriculos_on_adm_id", unique: true
  end

  create_table "curriculos_trilhas", id: false, force: :cascade do |t|
    t.bigint "curriculo_id", null: false
    t.bigint "trilha_id", null: false
    t.index ["curriculo_id", "trilha_id"], name: "index_curriculos_trilhas_on_curriculo_id_and_trilha_id"
    t.index ["trilha_id", "curriculo_id"], name: "index_curriculos_trilhas_on_trilha_id_and_curriculo_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.integer "prof_id"
    t.string "sigla"
    t.string "disc_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prof_id"], name: "index_disciplinas_on_prof_id", unique: true
  end

  create_table "disciplinas_modulos", id: false, force: :cascade do |t|
    t.bigint "disciplina_id", null: false
    t.bigint "modulo_id", null: false
    t.index ["disciplina_id", "modulo_id"], name: "index_disciplinas_modulos_on_disciplina_id_and_modulo_id"
    t.index ["modulo_id", "disciplina_id"], name: "index_disciplinas_modulos_on_modulo_id_and_disciplina_id"
  end

  create_table "modulos", force: :cascade do |t|
    t.string "nome", null: false
    t.bigint "trilha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trilha_id"], name: "index_modulos_on_trilha_id"
  end

  create_table "trilhas", force: :cascade do |t|
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "modulos", "trilhas", on_delete: :cascade
end
