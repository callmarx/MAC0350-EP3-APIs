class CreateJoinTablePerfilUsuario < ActiveRecord::Migration[5.2]
  def change
    create_join_table :perfils, :usuarios do |t|
      t.index [:perfil_id, :usuario_id]
      t.index [:usuario_id, :perfil_id]
    end
  end
end
