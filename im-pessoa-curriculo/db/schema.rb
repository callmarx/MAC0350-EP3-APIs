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

ActiveRecord::Schema.define(version: 2019_07_07_043834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cursas", force: :cascade do |t|
    t.integer "aluno_id"
    t.bigint "oferecimento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id", "oferecimento_id"], name: "index_cursas_on_aluno_id_and_oferecimento_id", unique: true
    t.index ["oferecimento_id"], name: "index_cursas_on_oferecimento_id"
  end

  create_table "oferecimentos", force: :cascade do |t|
    t.text "requisito"
    t.integer "creditos"
    t.integer "semestre_ideal"
    t.string "turma"
    t.date "ofe_data"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planejas", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "disciplina_id"
    t.decimal "nota", precision: 4, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id", "disciplina_id"], name: "index_planejas_on_aluno_id_and_disciplina_id", unique: true
  end

  add_foreign_key "cursas", "oferecimentos"
end
