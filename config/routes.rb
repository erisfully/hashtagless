Rails.application.routes.draw do

  root 'welcome#index'

  get '/register' => 'users#new', as: :users
  post '/register' => 'users#create'
end
