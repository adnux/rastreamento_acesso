Rails.application.routes.draw do
  match '(:anything)' => 'application#nothing', via: [:options]
  resources :contatos
  resources :acessos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
