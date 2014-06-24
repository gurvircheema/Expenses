Expenses::Application.routes.draw do
  
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :categories

  
  
  get "features", to: "home#features", as: "features"
  get "contact", to: "home#contact", as: "contact"
  get "users", to: "home#index", as: "users"
  resources :transactions
  # resources :sessions
  resources :users

 
  root 'home#index'

end
