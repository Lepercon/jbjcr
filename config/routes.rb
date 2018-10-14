Rails.application.routes.draw do
  get 'new/GoogleForms'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :static_pages, only: :show
  resources :users
  # get 'static_pages/home'
  # get 'static_pages/contact_us'
end
