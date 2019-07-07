class CreateServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :servicos do |t|
      t.boolean :editar
      t.boolean :ler
      t.boolean :deletar
      t.boolean :atualizar

      t.timestamps
    end
  end
end
