Rails.application.routes.draw do
  devise_for :users

  resources :tweets do
    resources :taito_likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  root 'tweets#index'
  
  resources :perfumes

end