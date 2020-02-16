Rails.application.routes.draw do
  resources :cards
  resources :responses

  resources :topics do 
    resources :cards
  end

  resources :users do
    resources :responses
  end

end
