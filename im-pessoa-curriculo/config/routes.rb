Rails.application.routes.draw do
  resources :cursas
  resources :oferecimentos
  resources :planejas
  get '/planejas/aluno', to: 'planejas#index_aluno'
  delete '/planejas/aluno/:aluno_id', to: 'planejas#destroy_by_aluno'
  delete '/planejas/disciplina/:disciplina_id', to: 'planejas#destroy_by_disciplina'
  get '/cursas/aluno', to: 'cursas#index_aluno'
  delete '/cursas/aluno/:aluno_id', to: 'cursas#destroy_by_aluno'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
