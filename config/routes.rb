Rails.application.routes.draw do

  root 'welcome#index'

  get '/register' => 'users#new', as: :users
end
