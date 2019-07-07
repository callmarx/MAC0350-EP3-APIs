class DisciplinasController < ApplicationController
  before_action :authorize_request
  before_action :set_disciplina, only: [:show, :update, :destroy]

  # GET /disciplinas
  def index
    @disciplinas = Disciplina.all

    render json: @disciplinas
  end

  # GET /disciplinas/1
  def show
    render json: @disciplina
  end

  # POST /disciplinas
  def create
    @disciplina = Disciplina.new(disciplina_params)

    if @disciplina.save
      render json: @disciplina, status: :created, location: @disciplina
    else
      render json: @disciplina.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /disciplinas/1
  def update
    if @disciplina.update(disciplina_params)
      render json: @disciplina
    else
      render json: @disciplina.errors, status: :unprocessable_entity
    end
  end

  # DELETE /disciplinas/1
  def destroy
    @disciplina.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplina
      @disciplina = Disciplina.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def disciplina_params
      params.require(:disciplina).permit(:prof_id, :sigla, :disc_data)
    end
end
