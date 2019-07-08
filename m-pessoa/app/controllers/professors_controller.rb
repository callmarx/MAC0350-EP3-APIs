class ProfessorsController < ApplicationController
  before_action :authorize_request
  before_action :set_professor, only: [:show, :update, :destroy]

  # GET /professors
  def index
    @professors = Professor.all

    render json: @professors.to_json(:include => :especialidades)
  end

  # GET /professors/1
  def show
    render json: @professor.to_json(:include => :especialidades)
  end

  # POST /professors
  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      render json: @professor, status: :created
    else
      render json: @professor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professors/1
  def update
    if @professor.update(professor_params)
      render json: @professor
    else
      render json: @professor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professors/1
  def destroy
    begin
      RestClient.delete("#{ENV['API_M_CURRICULO_HOST']}/disciplina/professor/#{@professor.id}", {Authorization: "Bearer #{ENV['API_JWT_TOKEN']}", content_type: :json})
      @professor.destroy
    rescue RestClient::ExceptionWithResponse => e
      render json: {erro: "Houve algum problema na exclusão de Disciplinas no Modulo Curriculo", resposta: e.response}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professor_params
      params.require(:professor).permit(:instituto, :sala, :salario, :pessoa_id)
    end
end
