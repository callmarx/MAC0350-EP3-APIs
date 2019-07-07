class CreateCursas < ActiveRecord::Migration[5.2]
  def change
    create_table :cursas do |t|
      t.integer :aluno_id
      t.references :oferecimento, foreign_key: true

      t.timestamps
    end
    add_index :cursas, [:aluno_id, :oferecimento_id], unique: true
  end
end
