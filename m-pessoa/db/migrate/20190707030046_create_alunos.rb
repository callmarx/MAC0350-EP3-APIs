class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :instituto
      t.string :curso
      t.integer :semestre
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
