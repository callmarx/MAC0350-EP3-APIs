Rails.application.routes.draw do
  resources :cursas
  resources :oferecimentos
  resources :planejas
  get '/planejas/aluno', to: 'planejas#index_aluno'
  get '/cursas/aluno', to: 'cursas#index_aluno'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
