class Cursa < ApplicationRecord
  belongs_to :oferecimento
  validates_uniqueness_of :aluno_id, scope: :oferecimento
  validates :aluno_id, presence: true
end
