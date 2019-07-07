Rails.application.routes.draw do
  resources :usuarios
  resources :perfils
  resources :servicos

  post '/login', to: 'authentication#login'
  #post '/signup', to: 'usuarios#create'
end
