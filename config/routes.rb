Rails.application.routes.draw do

  root 'dashboard#index'

  get '/welcome' => 'welcome#index'
  get '/register' => 'registrations#new', as: :users
  post '/register' => 'registrations#create'
  get '/signin' => 'sessions#new', as: :signin
  post '/signin' => 'sessions#create'


  get '/auth/twitter/callback' => 'users#twitter_login'
end
