Rails.application.routes.draw do
  resources :contacts, only: [:index, :create]
  resources :puppies
  resources :family_members, except: [:index]
  root 'puppies#index'
  get "/login_form" => 'admin_sessions#new'
  get '/login' => 'admin_sessions#create'
  get '/logout' => 'admin_sessions#destroy'
  get '/past_puppies' => 'puppies#past_puppies'
end
