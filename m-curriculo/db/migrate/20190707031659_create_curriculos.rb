class CreateCurriculos < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculos do |t|
      t.integer :amd_id
      t.string :curso
      t.string :turma
      t.integer :credito_acum

      t.timestamps
    end
    add_index :curriculos, :amd_id, unique: true
  end
end
