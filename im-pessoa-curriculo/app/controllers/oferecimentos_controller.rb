class OferecimentosController < ApplicationController
  before_action :authorize_request
  before_action :set_oferecimento, only: [:show, :update, :destroy]

  # GET /oferecimentos
  def index
    @oferecimentos = Oferecimento.all

    render json: @oferecimentos.to_json(:include => :cursas)
  end

  # GET /oferecimentos/1
  def show
    render json: @oferecimento.to_json(:include => :cursas)
  end

  # POST /oferecimentos
  def create
    @oferecimento = Oferecimento.new(oferecimento_params)

    if @oferecimento.save
      render json: @oferecimento, status: :created
    else
      render json: @oferecimento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /oferecimentos/1
  def update
    if @oferecimento.update(oferecimento_params)
      render json: @oferecimento
    else
      render json: @oferecimento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /oferecimentos/1
  def destroy
    @oferecimento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferecimento
      @oferecimento = Oferecimento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def oferecimento_params
      params.require(:oferecimento).permit(:requisito, :creditos, :semestre_ideal, :turma, :ofe_data, :disciplina_id)
    end
end
