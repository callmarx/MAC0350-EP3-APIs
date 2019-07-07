class PessoasController < ApplicationController
  before_action :authorize_request
  before_action :set_pessoa, only: [:show, :update, :destroy]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all

    render json: @pessoas
  end

  # GET /pessoas/1
  def show
    render json: @pessoa
  end

  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    if @pessoa.save
      render json: @pessoa, status: :created
    else
      render json: @pessoa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pessoas/1
  def update
    if @pessoa.update(pessoa_params)
      render json: @pessoa
    else
      render json: @pessoa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pessoas/1
  def destroy
    begin
      RestClient.delete("#{ENV['API_IM_ACESSO_PESSOA_HOST']}/pessoa_usuarios/#{@pessoa.id}", {Authorization: "Bearer #{ENV['API_JWT_TOKEN']}", content_type: :json})
      @pessoa.destroy
    rescue RestClient::ExceptionWithResponse => e
      render json: {erro: "Houve algum problema na exclusão de Usuario-Pessoa no Inter Modulo Acesso-Pessoa", resposta: e.response}
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pessoa_params
      params.require(:pessoa).permit(:nusp, :cpf, :pnome, :mnome, :snome, :end_cep, :end_rua, :end_numero, :end_complemento, :data_nasc)
    end
end
