class AlunosController < ApplicationController
  before_action :authorize_request
  before_action :set_aluno, only: [:show, :update, :destroy]

  # GET /alunos
  def index
    @alunos = Aluno.all

    render json: @alunos
  end

  # GET /alunos/1
  def show
    render json: @aluno
  end

  # POST /alunos
  def create
    @aluno = Aluno.new(aluno_params)

    if @aluno.save
      render json: @aluno, status: :created
    else
      render json: @aluno.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alunos/1
  def update
    if @aluno.update(aluno_params)
      render json: @aluno
    else
      render json: @aluno.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alunos/1
  def destroy
    @aluno.destroy
    begin
      RestClient.delete("#{ENV['API_IM_PESSOA_CURRICULO_HOST']}/planejas/aluno/#{@aluno.id}", {Authorization: "Bearer #{ENV['API_JWT_TOKEN']}", content_type: :json})
      @aluno.destroy
    rescue RestClient::ExceptionWithResponse => e
      render json: {erro: "Houve algum problema na exclusão de Planeja no Inter Modulo Pessoa-Curriculo", resposta: e.response}
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aluno_params
      params.require(:aluno).permit(:instituto, :curso, :semestre, :pessoa_id)
    end
end
