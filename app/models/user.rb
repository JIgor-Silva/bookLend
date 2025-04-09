class User < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :books, through: :rentals

  validates :name, presence: true, length: { minimum: 5 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :cpf, presence: true, uniqueness: true
end
