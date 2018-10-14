Rails.application.routes.draw do
  get 'new/GoogleForms'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :static_pages, only: :show
  resources :users
  resources :google_forms
  
  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :claims
end
