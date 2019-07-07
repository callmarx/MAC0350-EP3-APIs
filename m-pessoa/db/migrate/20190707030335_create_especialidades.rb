class CreateEspecialidades < ActiveRecord::Migration[5.2]
  def change
    create_table :especialidades do |t|
      t.string :area_especialidade
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
