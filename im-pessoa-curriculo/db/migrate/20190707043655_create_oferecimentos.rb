class CreateOferecimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :oferecimentos do |t|
      t.text :requisito
      t.integer :creditos
      t.integer :semestre_ideal
      t.string :turma
      t.date :ofe_data
      t.integer :disciplina_id

      t.timestamps
    end
  end
end
