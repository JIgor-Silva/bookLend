class Book < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :users, through: :rentals

  validates :title, :author, :description, presence: true, length: { minimum: 5 }
  validates :pages, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :available, -> { where(rented: false) }
end
