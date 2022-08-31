Rails.application.routes.draw do
  
  resources :portfolios
  
  # We can add any type of name to the route ex get 'salgj', to: "pages#home"
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs
  
  root "pages#home"
end
