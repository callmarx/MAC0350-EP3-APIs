class Perfil < ApplicationRecord
  belongs_to :servico
  has_and_belongs_to_many :usuarios
  validates :data_cria, presence: true
end
