class CreatePlanejas < ActiveRecord::Migration[5.2]
  def change
    create_table :planejas do |t|
      t.integer :aluno_id, null: false
      t.integer :disciplina_id, null: false
      t.decimal :nota, precision: 4, scale: 2

      t.timestamps
    end
    add_index :planejas, [:aluno_id, :disciplina_id], unique: true
  end
end
