class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books=Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Cadastro do livro realizado" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end


  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_path, notice: "Erro no cadastro do livro" }
      else
        format.html { rendirect_to :edit, notice: "Erro no cadastro do livro" }
      end
    end
  end

  def destroy
    @book.destroy
    format.html { redirect_to book_path, notice: "Cadastro do livro removido com sucesso" }
  end

  private

  def set_book
    @book = Book.find(params[:id])
  rescue ActiveRecord::RecordNotFound
      render json: { error: "Livro não cadastrado" }, status: :not_found
  end

  def book_params
    params.require(:book).permit([:title, :author, :description, :pages, :url_image_cover])
  end
end
