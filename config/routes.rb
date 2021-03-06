AjaxSearch::Application.routes.draw do
  resources :searches

  resources :todos

  resources :users
  
  resource :session, :only => [:new, :create, :destroy]

  match 'signup' => 'users#new', :as => :signup
  match 'register' => 'users#create', :as => :register
  match 'login' => 'sessions#new', :as => :login
  match 'logout' => 'sessions#destroy', :as => :logout

  root :to => 'sessions#new'
end
