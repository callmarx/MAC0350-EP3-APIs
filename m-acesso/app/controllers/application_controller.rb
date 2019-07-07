class ApplicationController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    ## Autenticação para acesso interno da API.
    #  Para os casos em que as outras APIs precisem acessar esta API
    if header == ENV["API_JWT_TOKEN"]
      @current_user = "acesso interno"
    else
      begin
        @decoded = JsonWebToken.decode(header)
        @current_user = Usuario.find(@decoded[:user_id])
      rescue ActiveRecord::RecordNotFound => e
        render json: { Erro: "Autenticação invalida", tipo: e.message }, status: :unauthorized
      rescue JWT::DecodeError => e
        render json: { Erro: "Autenticação invalida", tipo: e.message }, status: :unauthorized
      end
    end
  end

end
