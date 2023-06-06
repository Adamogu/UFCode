Rails.application.routes.draw do
  get 'gameqcms/create'
  get 'usergames/create'
  get 'usergames/show'
  get 'usergames/update'
  get 'games/create'
  get 'games/index'
  get 'games/show'
  get 'games/destroy'
  devise_for :users

  root to: "page#home"
  # resources :games, only: [:create, :index, :show, :destroy] do
  #   resources :user_games, only: [:create]
  #   resources :game_qcms, only: [:create]
  # end
  # resources :user_games, only: [:show, :update]
  # get "choose_language", to: "qcms#choose_language", as: :choose_language
  # get "choose_level", to: "qcms#choose_language", as: :choose_language
end
