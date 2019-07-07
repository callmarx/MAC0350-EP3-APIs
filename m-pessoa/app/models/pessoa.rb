class Pessoa < ApplicationRecord
  has_one :professor
  has_one :aluno
  has_one :administrador
end
