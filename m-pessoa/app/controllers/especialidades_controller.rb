class EspecialidadesController < ApplicationController
  before_action :authorize_request
  before_action :set_especialidade, only: [:show, :update, :destroy]

  # GET /especialidades
  def index
    @especialidades = Especialidade.all

    render json: @especialidades
  end

  # GET /especialidades/1
  def show
    render json: @especialidade
  end

  # POST /especialidades
  def create
    @especialidade = Especialidade.new(especialidade_params)

    if @especialidade.save
      render json: @especialidade, status: :created, location: @especialidade
    else
      render json: @especialidade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /especialidades/1
  def update
    if @especialidade.update(especialidade_params)
      render json: @especialidade
    else
      render json: @especialidade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /especialidades/1
  def destroy
    @especialidade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidade
      @especialidade = Especialidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def especialidade_params
      params.require(:especialidade).permit(:area_especialidade, :professor_id)
    end
end
