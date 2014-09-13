Rails.application.routes.draw do

  root 'dashboard#index'

  get '/welcome' => 'welcome#index'
  get '/register' => 'registrations#new', as: :users
  post '/register' => 'registrations#create'
  get '/signin' => 'sessions#new', as: :signin
  post '/signin' => 'sessions#create'
  get 'signout' => 'sessions#destroy'

  match '/auth/:provider/callback', to: 'twitter#create', via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  get '/twitter', to: 'twitter#new', as: :twitter
end
