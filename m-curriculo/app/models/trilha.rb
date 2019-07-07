class Trilha < ApplicationRecord
  has_and_belongs_to_many :curriculos
  has_many :modulos
  validates :nome, presence: true
end
