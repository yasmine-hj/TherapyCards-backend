Rails.application.routes.draw do
  resources :cards
  resources :users
  resources :responses

  resources :topics do 
    resources :cards
  end

  resources :users do
    resources :responses
  end


  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  post 'auth/register', to: 'users#register'

end
