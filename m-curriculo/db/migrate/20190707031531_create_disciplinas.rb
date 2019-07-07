class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.integer :prof_id
      t.string :sigla
      t.string :disc_data

      t.timestamps
    end
    add_index :disciplinas, :sigla, unique: true
  end
end
