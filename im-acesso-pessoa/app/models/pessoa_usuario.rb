class PessoaUsuario < ApplicationRecord
    validates :pessoa_id, uniqueness: true
end
