class AdministradorsController < ApplicationController
  before_action :authorize_request
  before_action :set_administrador, only: [:show, :update, :destroy]

  # GET /administradors
  def index
    @administradors = Administrador.all

    render json: @administradors
  end

  # GET /administradors/1
  def show
    render json: @administrador
  end

  # POST /administradors
  def create
    @administrador = Administrador.new(administrador_params)

    if @administrador.save
      render json: @administrador, status: :created
    else
      render json: @administrador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /administradors/1
  def update
    if @administrador.update(administrador_params)
      render json: @administrador
    else
      render json: @administrador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /administradors/1
  def destroy
    @administrador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrador
      @administrador = Administrador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def administrador_params
      params.require(:administrador).permit(:cargo, :salario, :pessoa_id)
    end
end
