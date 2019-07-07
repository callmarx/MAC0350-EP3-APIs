class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :instituto
      t.string :curso, null: false
      t.integer :semestre
      t.references :pessoa, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
