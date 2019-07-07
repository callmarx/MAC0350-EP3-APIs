class PlanejasController < ApplicationController
  before_action :set_planeja, only: [:show, :update, :destroy]

  # GET /planejas
  def index
    @planejas = Planeja.all

    render json: @planejas
  end

  # GET /planejas/1
  def show
    render json: @planeja
  end

  # POST /planejas
  def create
    @planeja = Planeja.new(planeja_params)

    if @planeja.save
      render json: @planeja, status: :created, location: @planeja
    else
      render json: @planeja.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /planejas/1
  def update
    if @planeja.update(planeja_params)
      render json: @planeja
    else
      render json: @planeja.errors, status: :unprocessable_entity
    end
  end

  # DELETE /planejas/1
  def destroy
    @planeja.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planeja
      @planeja = Planeja.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def planeja_params
      params.require(:planeja).permit(:aluno_id, :disciplina_id, :nota)
    end
end
