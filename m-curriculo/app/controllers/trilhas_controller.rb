class TrilhasController < ApplicationController
  before_action :authorize_request
  before_action :set_trilha, only: [:show, :update, :destroy]

  # GET /trilhas
  def index
    @trilhas = Trilha.all

    render json: @trilhas.to_json(:include => :modulos)
  end

  # GET /trilhas/1
  def show
    render json: @trilha.to_json(:include => :modulos)
  end

  # POST /trilhas
  def create
    @trilha = Trilha.new(trilha_params)

    if @trilha.save
      render json: @trilha, status: :created
    else
      render json: @trilha.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trilhas/1
  def update
    if @trilha.update(trilha_params)
      render json: @trilha
    else
      render json: @trilha.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trilhas/1
  def destroy
    @trilha.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trilha
      @trilha = Trilha.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trilha_params
      params.require(:trilha).permit(:nome)
    end
end
