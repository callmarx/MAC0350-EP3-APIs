class CursasController < ApplicationController
  before_action :set_cursa, only: [:show, :update, :destroy]

  # GET /cursas
  def index
    @cursas = Cursa.all

    render json: @cursas
  end

  # GET /cursas/1
  def show
    render json: @cursa
  end

  # POST /cursas
  def create
    @cursa = Cursa.new(cursa_params)

    if @cursa.save
      render json: @cursa, status: :created, location: @cursa
    else
      render json: @cursa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cursas/1
  def update
    if @cursa.update(cursa_params)
      render json: @cursa
    else
      render json: @cursa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cursas/1
  def destroy
    @cursa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursa
      @cursa = Cursa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cursa_params
      params.require(:cursa).permit(:aluno_id, :oferecimento_id)
    end
end
