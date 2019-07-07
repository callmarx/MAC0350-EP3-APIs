class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.date :data_cria
      t.references :servico, foreign_key: true

      t.timestamps
    end
  end
end
