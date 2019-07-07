class Pessoa < ApplicationRecord
  has_one :professor
  has_one :aluno
  has_one :administrador
  validates :nusp, presence: true, uniqueness: true
  validates :cpf, uniqueness: true
  validates :pnome, presence: true
  validates :snome, presence: true
end
