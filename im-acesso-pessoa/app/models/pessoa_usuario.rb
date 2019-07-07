class PessoaUsuario < ApplicationRecord
    validates :pessoa_id, presence: true, uniqueness: true
end
