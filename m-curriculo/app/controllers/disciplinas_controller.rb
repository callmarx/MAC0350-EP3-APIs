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
      render json: @disciplina, status: :created
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
    begin
      RestClient.delete("#{ENV['API_IM_PESSOA_CURRICULO_HOST']}/planejas/disciplina/#{@disciplina.id}", {Authorization: "Bearer #{ENV['API_JWT_TOKEN']}", content_type: :json})
      @disciplina.destroy
    rescue RestClient::ExceptionWithResponse => e
      render json: {erro: "Houve algum problema na exclusão de Planeja no Inter Modulo Pessoa-Curriculo", resposta: e.response}
    end
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
