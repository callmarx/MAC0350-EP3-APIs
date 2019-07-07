class Aluno < ApplicationRecord
  belongs_to :pessoa
  validates :curso, presence: true
end
