require 'rails_helper'

RSpec.describe "Rentals", type: :request do
  describe "GET /rentals/new" do
    it "returns http success" do
      book = Book.create!(title: "Test Book", author: "Test Author", pages: 100, description: "Test description") # Crie um livro

      get "/rentals/new", params: { book_id: book.id } # Use a rota correta e passe o book_id
      expect(response).to have_http_status(:success)
    end
  end
end
