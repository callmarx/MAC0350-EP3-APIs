class CurriculosController < ApplicationController
  before_action :authorize_request
  before_action :set_curriculo, only: [:show, :update, :destroy]

  # GET /curriculos
  def index
    @curriculos = Curriculo.all

    render json: @curriculos
  end

  # GET /curriculos/1
  def show
    render json: @curriculo
  end

  # POST /curriculos
  def create
    @curriculo = Curriculo.new(curriculo_params)

    if @curriculo.save
      render json: @curriculo, status: :created, location: @curriculo
    else
      render json: @curriculo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /curriculos/1
  def update
    if @curriculo.update(curriculo_params)
      render json: @curriculo
    else
      render json: @curriculo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /curriculos/1
  def destroy
    @curriculo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculo
      @curriculo = Curriculo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def curriculo_params
      params.require(:curriculo).permit(:adm_id, :curso, :turma, :credito_acum)
    end
end
