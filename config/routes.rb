Rails.application.routes.draw do
  resources :cards
  resources :topics do 
    resources :cards
  end
  resources :responses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'

end
