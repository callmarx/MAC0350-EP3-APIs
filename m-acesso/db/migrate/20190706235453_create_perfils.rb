class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.date :data_cria, null: false
      t.references :servico, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
