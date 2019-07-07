Rails.application.routes.draw do
  resources :usuarios
  resources :perfils
  resources :servicos

  resources :users, param: :_username
  post '/login', to: 'authentication#login'
  #post '/signup', to: 'usuarios#create'
end
