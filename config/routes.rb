Expenses::Application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :categories

  
  
  get "features", to: "home#features", as: "features"
  get "contact", to: "home#contact", as: "contact"
  resources :transactions
  # resources :sessions
  resources :users

 
  root 'home#index'

end
