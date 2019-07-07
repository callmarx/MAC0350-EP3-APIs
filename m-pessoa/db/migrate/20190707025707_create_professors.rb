class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :instituto, null: false
      t.string :sala
      t.decimal :salario, precision: 8, scale: 2, null: false
      t.references :pessoa, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
