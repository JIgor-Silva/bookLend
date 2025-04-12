class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update]

  def index
    @rentals = Rental.all
  end

  def show
  end

  def new
    @rental = Rental.new(book_id: params[:book_id])
  end

  def edit
  end

  def create
    @rental = Rental.new(rental_params)
    # pega o cpf e associar o usuário ao aluguel
    user = User.find_by(cpf: params[:cpf])

    if user.present?
      if existe_pendencia?(user)
        render :new
        flash[:alert] = "Esse cliente possui pendencia."
      else
        @rental.user = user
        @rental.status = :rented

        if @rental.save
          book = Book.find(@rental.book_id)
          book.update!(rented: true)
          flash[:notice] = "Livro alugado com sucesso!"
          redirect_to user_path(user)
        else
          render :new
          flash[:alert] = "Erro: #{@rental.errors.full_messages.to_sentence}"
        end
      end
    else
      # cadastro do usuário
      redirect_to new_user_path
      flash[:alert] = "CPF não encontrado. Por favor, cadastre-se."
    end
  end

  def return_book
    @rental = Rental.find(params[:id])
    @book = @rental.book

    if @rental.update(return_date: Time.current)
      @book.update(rented: true)
      @rental.update(status: :returned)
      flash[:notice] = "Livro devolvido com sucesso!"
    else
      flash[:alert] = "Erro ao registrar a devolução."
    end
    redirect_to user_path(@rental.user)
  end

  def update
    @rental = Rental.find(params[:id])
  end

  def destroy
    @rental = @rental.destroy
    format.html { redirect_to book_path, notice: "Emprestimo removido com sucesso" }
  end

  def set_rental
    @rental = Rental.find(params[:id])
  rescue ActiveRecord::RecordNotFound
        format.json { render json: { error: "Emprestimo não encontrado" }, status: :not_found }
  end

  def rental_params
    params.require(:rental).permit(:return_date, :status, :book_id)
  end

  def existe_pendencia?(user)
    rental  = Rental.joins(:book).where(books: { rented: true }, user_id: user.id)
    true if rental.present?
  end
end
