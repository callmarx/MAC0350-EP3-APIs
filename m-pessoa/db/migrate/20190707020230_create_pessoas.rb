class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nusp
      t.string :cpf
      t.string :pnome
      t.string :mnome
      t.string :snome
      t.string :end_cep
      t.string :end_rua
      t.string :end_numero
      t.string :end_complemento
      t.date :data_nasc

      t.timestamps
    end
    add_index :pessoas, :nusp, unique: true
    add_index :pessoas, :cpf, unique: true
  end
end
