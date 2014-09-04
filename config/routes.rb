Rails.application.routes.draw do

  root 'dashboard#index'

  get '/welcome' => 'welcome#index'
  get '/register' => 'registrations#new', as: :users
  post '/register' => 'registrations#create'
end
