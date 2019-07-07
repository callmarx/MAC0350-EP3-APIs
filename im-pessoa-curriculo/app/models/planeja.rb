class Planeja < ApplicationRecord
  validates_uniqueness_of :aluno_id, scope: :disciplina_id
  validates_numericality_of :nota, less_than: 10.01
  validates_numericality_of :nota, greater_than: 0.00

end
