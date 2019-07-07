class CreateJoinTableDisciplinaModulo < ActiveRecord::Migration[5.2]
  def change
    create_join_table :disciplinas, :modulos do |t|
       t.index [:disciplina_id, :modulo_id]
       t.index [:modulo_id, :disciplina_id]
    end
  end
end
