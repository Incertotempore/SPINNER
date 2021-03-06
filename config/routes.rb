Rails.application.routes.draw do
  get 'plays/casinos'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tutorials', to: 'pages#tutorials', as: 'tutorials'
  get '/about', to: 'pages#about', as: 'about'
  get '/profile', to: 'pages#profile', as: 'profile'
  get '/history', to: 'pages#history', as: 'history'

  get '/plays', to: 'plays#index', as: 'plays'

end
