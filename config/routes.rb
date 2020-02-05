Rails.application.routes.draw do
  resources :cards
  resources :users

  resources :topics do 
    resources :cards
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  get  'authenticate', to: 'authentication#authenticate'
end
