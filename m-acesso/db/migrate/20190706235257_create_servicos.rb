class CreateServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :servicos do |t|
      t.boolean :criar, null: false
      t.boolean :ler, null: false
      t.boolean :deletar, null: false
      t.boolean :atualizar, null: false

      t.timestamps
    end
  end
end
