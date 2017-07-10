Rails.application.routes.draw do
  
	root 'welcome#home'
	
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :articles
  resources :users
  resources :authors
  resources :comments
  resources :subjects
  resources :votes


  resources :articles do 
    resources :comments # Nested Resource # that expresses: /articles/:id/comments
  end

  resources :articles do 
    resources :votes # Nested Resource # that expresses: /articles/:id/votes
  end

  resources :users do 
    resources :articles # Nested Resource # that expresses: /articles/:id/comments
  end

  get 'articles/:id/body', to: 'articles#body'
  # get 'articles/:id/vote', to: 'articles#vote'
  get 'articles/:id/article_data', to: 'articles#article_data'

  get '/auth/facebook/callback' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
