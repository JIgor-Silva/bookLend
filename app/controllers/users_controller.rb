class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to books_path, notice: "Cadastro realizado" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: "Cadastro editado com sucesso" }
        format.json { rendirect_to users_path, notice: "Cadastro editado com sucesso" }
      else
        format.html { redirect_to users_path, notice: "Cadastro não encontrado" }
        format.json { rendirect_to users_path, notice: "Cadastro não encontrado" }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @user.destroy
      format.html { redirect_to users_path, notice: "Cadastro removido com sucesso" }
      format.json { rendirect_to users_path, notice: "Cadastro removido com sucesso" }
      else
        format.html { redirect_to users_path, notice: t(notices.action_not_found) }
        format.json { rendirect_to users_path, notice: t(notices.action_not_found) }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Cadastro não encontrado" }, status: :not_found
  end

  def user_params
    params.require(:user).permit([:name, :email, :cpf])
  end
end
