class Disciplina < ApplicationRecord
  has_and_belongs_to_many :modulos
  validates :sigla, uniqueness: true
end
