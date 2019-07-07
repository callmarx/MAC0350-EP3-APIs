class Modulo < ApplicationRecord
  belongs_to :trilha
  has_and_belongs_to_many :disciplinas
end
