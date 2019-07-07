class Pessoa < ApplicationRecord
  has_one :professor
  has_one :aluno
  has_one :administrador
  validates :nusp, presence: true, uniqueness: true
  validates :cpf, uniqueness: true
end
