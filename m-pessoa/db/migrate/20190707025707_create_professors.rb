class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :instituto
      t.string :sala
      t.decimal :salario, precision: 5, scale: 2
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
