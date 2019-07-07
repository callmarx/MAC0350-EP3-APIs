class Servico < ApplicationRecord
  has_one :perfil
  validates_inclusion_of :criar, in: [true, false]
  validates_inclusion_of :ler, in: [true, false]
  validates_inclusion_of :deletar, in: [true, false]
  validates_inclusion_of :atualizar, in: [true, false]
  ## Para atributos do tipo boolean é preciso usar validates_inclusion_of ao
  ## inves de validates :boolean_field, presence: true
  # validates :criar, presence: true, default: false
  # validates :ler, presence: true, default: false
  # validates :deletar, presence: true, default: false
  # validates :atualizar, presence: true, default: false
end
