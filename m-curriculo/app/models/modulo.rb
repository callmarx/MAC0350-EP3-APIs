class Modulo < ApplicationRecord
  belongs_to :trilha
  has_and_belongs_to_many :disciplinas
  validates :nome, presence: true
end
