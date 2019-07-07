class Usuario < ApplicationRecord
  has_and_belongs_to_many :perfils
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
          length: { minimum: 6 },
          if: -> { new_record? || !password.nil? }
end
