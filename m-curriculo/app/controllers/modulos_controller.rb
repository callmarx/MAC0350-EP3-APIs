class ModulosController < ApplicationController
  before_action :authorize_request
  before_action :set_modulo, only: [:show, :update, :destroy]

  # GET /modulos
  def index
    @modulos = Modulo.all

    render json: @modulos
  end

  # GET /modulos/1
  def show
    render json: @modulo
  end

  # POST /modulos
  def create
    @modulo = Modulo.new(modulo_params)

    if @modulo.save
      render json: @modulo, status: :created, location: @modulo
    else
      render json: @modulo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modulos/1
  def update
    if @modulo.update(modulo_params)
      render json: @modulo
    else
      render json: @modulo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modulos/1
  def destroy
    @modulo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modulo
      @modulo = Modulo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modulo_params
      params.require(:modulo).permit(:nome, :trilha_id)
    end
end
