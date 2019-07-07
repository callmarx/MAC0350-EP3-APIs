class Disciplina < ApplicationRecord
  has_and_belongs_to_many :modulos
  validates :prof_id, uniqueness: true
end
