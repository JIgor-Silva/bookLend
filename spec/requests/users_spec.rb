describe "GET /show", type: :request do
  it "returns http success" do
    user = User.create!(name: "Test User", cpf: "12345678900", email: "dsada@gmail.com") # Crie um usuário

    get "/users/#{user.id}" # Use o ID do usuário na URL
    expect(response).to have_http_status(:success)
  end

  it "returns http success" do
    get "/users"
    expect(response).to have_http_status(:success)
  end
end
