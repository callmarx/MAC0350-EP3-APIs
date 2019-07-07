class CreateAdministradors < ActiveRecord::Migration[5.2]
  def change
    create_table :administradors do |t|
      t.string :cargo
      t.decimal :salario, precision: 5, scale: 2
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
