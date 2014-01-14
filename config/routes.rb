SampleApp::Application.routes.draw do

  get "home/index"
  
  resources :messages, only: [ :create, :index ]
  
  resources :microposts do
    collection do
      post "send_email"
    end
  end

  resources :users
  resources :analyzes
  resources :medical_cards

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new'

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
  get "static_pages/new_york"
  get "static_pages/paris"
  get "static_pages/tokyo"
end
