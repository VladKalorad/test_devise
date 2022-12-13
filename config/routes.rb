Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :books
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    
  root 'home#home'
  get 'home', to: 'home#home'
  get 'second', to: 'home#second'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
