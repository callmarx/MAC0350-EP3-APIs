class CreatePessoaUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoa_usuarios do |t|
      t.integer :pessoa_id
      t.integer :usuario_id

      t.timestamps
    end
    add_index :pessoa_usuarios, :pessoa_id, unique: true
  end
end
