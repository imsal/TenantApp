Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'navigation' => 'navigation#index'

  resources :portfolios
  resources :properties
  resources :buildings
  resources :suites
  resources :tenants
  resources :find_info
  resources :welcome
  resources :vendors
  resources :contacts

  ##### USER AREA ####



  get 'signup' => 'users#new'
  # Figure out how to disable /users/new while keeping the above alias
  resources :users

  get 'profile' => 'users#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  root 'welcome#index'



end
