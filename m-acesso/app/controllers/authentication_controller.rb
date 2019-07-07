class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

# POST /auth/login
def login
  @usuario = Usuario.find_by_email(params[:email])
  if @usuario&.authenticate(params[:password])
    token = JsonWebToken.encode(user_id: @usuario.id)
    time = Time.now + 24.hours.to_i
    render json: { "token de autenticação": token, "expira em (24h)": time.strftime("%m-%d-%Y %H:%M"),
                   "Usuário de email": @usuario.email }, status: :ok
  else
    render json: { erro: 'login não Autorizado' }, status: :unauthorized
  end
end

  private
    def login_params
      params.permit(:email, :password)
    end
end
