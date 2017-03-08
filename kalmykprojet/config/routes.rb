Rails.application.routes.draw do
	root 'welcome#home'
	
      get '/signup', to: 'users#new'
      post '/signup', to: 'users#create'
      get    '/login', to: 'sessions#new'
      post   '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :comments
  resources :articles
  resources :subjects

  resources :articles do 
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
