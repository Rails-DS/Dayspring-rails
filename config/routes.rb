Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
  end
  
  resources :portfolios, except: [:show] 

  get 'rails-items', to: 'portfolios#rubyonrails'
  get 'angular-items', to: 'portfolios#angular'
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  # We can add any type of name to the route ex get 'salgj', to: "pages#home"
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  # get 'posts/*missing', to: 'posts#missing'


  resources :blogs do
   member do 
    get :toggle_status
   end
  end


  # Home page for the rails application
  root "pages#home"
end
