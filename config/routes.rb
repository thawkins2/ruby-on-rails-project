Rails.application.routes.draw do
  
	root 'home_page#home'
  get 'users/new'
  get 'home_page/home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'leagues', to: 'leagues#index'
  get 'la_liga', to: 'leagues#la_liga'
  get 'epl', to: 'leagues#epl'
  get 'bundesliga', to: 'leagues#bundesliga'
  get 'seria_a', to: 'leagues#seria_a'
  get 'eredivise', to: 'leagues#eredivise'
  get 'league_one', to: 'leagues#league_one'

	get 'table', to: 'api_requests#la_liga'

	get 'scores', to: 'scores#index'
  get 'la_liga_matchday', to: 'scores#la_liga_matchday'
  get 'epl_matchday', to: 'scores#epl_matchday'
  get 'bundesliga_matchday', to: 'scores#bundesliga_matchday'
  get 'seria_a_matchday', to: 'scores#seria_a_matchday'
  get 'eredivise_matchday', to: 'scores#eredivise_matchday'
  get 'league_one_matchday', to: 'scores#league_one_matchday'

  post 'new_user_bet', to: 'user_bets#new_user_bet'
  get 'user_bet', to: 'bets#user_bet'
  resources :users
  resources :discussions
  resources :bets
  resources :user_bets
  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
