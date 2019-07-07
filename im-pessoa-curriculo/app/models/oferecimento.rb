class Oferecimento < ApplicationRecord
  has_many :cursas
  validates :ofe_data, presence: true
  validates :disciplina_id, presence: true
end
