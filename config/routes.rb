Rails.application.routes.draw do
	root to: 'articles#index'
  resources :articles do
  	resources :comments
  end	

  resources :tags
  resources :authors

  resources :author_sessions, only: [:new, :create, :destroy]

  resources :popular_articles, only: [:index]

  resources :articles_by_month, only: [:index]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
