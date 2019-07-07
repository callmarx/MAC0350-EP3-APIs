class Curriculo < ApplicationRecord
  has_and_belongs_to_many :trilhas
  validates :adm_id, uniqueness: true
end
