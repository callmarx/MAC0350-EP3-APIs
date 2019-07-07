class CreateCursas < ActiveRecord::Migration[5.2]
  def change
    create_table :cursas do |t|
      t.integer :aluno_id, null: false
      t.references :oferecimento, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
    add_index :cursas, [:aluno_id, :oferecimento_id], unique: true
  end
end
