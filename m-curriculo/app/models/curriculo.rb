class Curriculo < ApplicationRecord
  has_and_belongs_to_many :trilhas
end
