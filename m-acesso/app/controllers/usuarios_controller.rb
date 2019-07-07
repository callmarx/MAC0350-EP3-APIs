class UsuariosController < ApplicationController
  before_action :authorize_request, except: :create
  before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios.as_json(only: [:id, :email]), status: :ok
  end

  # GET /usuarios/1
  def show
    render json: @usuario.as_json(only: [:id, :email]), status: :ok
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario.as_json(only: [:id, :email]), status: :created, location: @usuario
    else
      render json: {erro: "cadastro não foi relizado", situação: @usuario.errors}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { errors: 'Usuario não encontrado' }, status: :not_found
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:email, :password, :password_confirmation)
    end
end
