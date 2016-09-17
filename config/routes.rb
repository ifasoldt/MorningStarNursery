Rails.application.routes.draw do
  resources :contacts
  resources :puppies
  root 'puppies#index'
  get "/login_form" => 'admin_sessions#new'
  get '/login' => 'admin_sessions#create'
  get '/logout' => 'admin_sessions#destroy'
end
