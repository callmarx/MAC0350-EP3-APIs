Rails.application.routes.draw do
  resources :modulos
  resources :trilhas
  resources :curriculos
  resources :disciplinas
  delete '/curriculos/administrador/:adm_id', to: 'curriculos#destroy_by_administrador' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
