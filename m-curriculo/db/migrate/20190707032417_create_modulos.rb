class CreateModulos < ActiveRecord::Migration[5.2]
  def change
    create_table :modulos do |t|
      t.string :nome, null: false
      t.references :trilha, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
