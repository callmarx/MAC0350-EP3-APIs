class Servico < ApplicationRecord
  has_one :perfil
  validates :editar, presence: true
  validates :ler, presence: true
  validates :deletar, presence: true
  validates :atualizar, presence: true
end
