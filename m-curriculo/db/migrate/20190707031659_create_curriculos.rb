class CreateCurriculos < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculos do |t|
      t.integer :adm_id
      t.string :curso
      t.string :turma
      t.integer :credito_acum

      t.timestamps
    end
    add_index :curriculos, :adm_id, unique: true
  end
end
