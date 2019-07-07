class PessoaUsuariosController < ApplicationController
  before_action :authorize_request
  before_action :set_pessoa_usuario, only: [:show, :update, :destroy]

  # GET /pessoa_usuarios
  def index
    @pessoa_usuarios = PessoaUsuario.all

    render json: @pessoa_usuarios
  end

  # GET /pessoa_usuarios/1
  def show
    render json: @pessoa_usuario
  end

  # POST /pessoa_usuarios
  def create
    @pessoa_usuario = PessoaUsuario.new(pessoa_usuario_params)

    if @pessoa_usuario.save
      render json: @pessoa_usuario, status: :created, location: @pessoa_usuario
    else
      render json: @pessoa_usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pessoa_usuarios/1
  def update
    if @pessoa_usuario.update(pessoa_usuario_params)
      render json: @pessoa_usuario
    else
      render json: @pessoa_usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pessoa_usuarios/1
  def destroy
    @pessoa_usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_usuario
      @pessoa_usuario = PessoaUsuario.find_by_pessoa_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pessoa_usuario_params
      params.require(:pessoa_usuario).permit(:pessoa_id, :usuario_id)
    end
end
