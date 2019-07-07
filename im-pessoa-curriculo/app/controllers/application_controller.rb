class ApplicationController < ActionController::API
  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    ## Autenticação para acesso interno da API.
    #  Teriocamente apenas as outras 4 APIs podem acessar esta API
    if header == ENV["API_JWT_TOKEN"]
      @current_user = "acesso interno"
    else
      render json: {Erro: "Não Autorizado"}, status: :unauthorized
    end
  end
end
