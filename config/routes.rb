SampleApp::Application.routes.draw do

  get "home/index"
  
  resources :messages, only: [ :create, :index ]

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :microposts do
    collection do
      post "send_email"
    end
  end 

  resources :users 
  resources :analyzes
  resources :medical_cards do
    member do
      get "user_inform"
    end
  end

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
  get "static_pages/new_york"
  get "static_pages/paris"
  get "static_pages/tokyo"
end
