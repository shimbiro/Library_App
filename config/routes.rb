Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'home#index'
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  get 'users' => 'users#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  # delete 'logout' => 'sessions#destroy'
end