Expenses::Application.routes.draw do
  
  resources :categories

  get "login" ,to: "sessions#new" , as: "login"
  get "signup" ,to: "users#new" , as: "signup"
  get "logout" ,to: "sessions#destroy" , as: "logout"
  
  get "features", to: "home#features", as: "features"
  get "contact", to: "home#contact", as: "contact"
  resources :transactions
  resources :sessions
  resources :users

 
  root 'home#index'

end
