class Administrador < ApplicationRecord
  belongs_to :pessoa
  validates_numericality_of :salario, less_than: 100000.00
  validates_numericality_of :salario, greater_than: 0.00
  validates :salario, presence: true
end
