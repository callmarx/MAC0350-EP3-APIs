class CreateJoinTableCurriculoTrilha < ActiveRecord::Migration[5.2]
  def change
    create_join_table :curriculos, :trilhas do |t|
      t.index [:curriculo_id, :trilha_id]
      t.index [:trilha_id, :curriculo_id]
    end
  end
end
