class ServicosController < ApplicationController
  before_action :set_servico, only: [:show, :update, :destroy]

  # GET /servicos
  def index
    @servicos = Servico.all

    render json: @servicos
  end

  # GET /servicos/1
  def show
    render json: @servico
  end

  # POST /servicos
  def create
    @servico = Servico.new(servico_params)

    if @servico.save
      render json: @servico, status: :created, location: @servico
    else
      render json: @servico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servicos/1
  def update
    if @servico.update(servico_params)
      render json: @servico
    else
      render json: @servico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servicos/1
  def destroy
    @servico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico
      @servico = Servico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servico_params
      params.require(:servico).permit(:editar, :ler, :deletar, :atualizar)
    end
end
