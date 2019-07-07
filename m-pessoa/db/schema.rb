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

ActiveRecord::Schema.define(version: 2019_07_07_030335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.string "cargo"
    t.decimal "salario", precision: 5, scale: 2
    t.bigint "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_administradors_on_pessoa_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "instituto"
    t.string "curso"
    t.integer "semestre"
    t.bigint "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_alunos_on_pessoa_id"
  end

  create_table "especialidades", force: :cascade do |t|
    t.string "area_especialidade"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_especialidades_on_professor_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nusp"
    t.string "cpf"
    t.string "pnome"
    t.string "mnome"
    t.string "snome"
    t.string "end_cep"
    t.string "end_rua"
    t.string "end_numero"
    t.string "end_complemento"
    t.date "data_nasc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_pessoas_on_cpf", unique: true
    t.index ["nusp"], name: "index_pessoas_on_nusp", unique: true
  end

  create_table "professors", force: :cascade do |t|
    t.string "instituto"
    t.string "sala"
    t.decimal "salario", precision: 5, scale: 2
    t.bigint "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_professors_on_pessoa_id"
  end

  add_foreign_key "administradors", "pessoas"
  add_foreign_key "alunos", "pessoas"
  add_foreign_key "especialidades", "professors"
  add_foreign_key "professors", "pessoas"
end
