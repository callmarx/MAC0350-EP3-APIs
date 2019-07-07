class Trilha < ApplicationRecord
  has_and_belongs_to_many :curriculos
end
