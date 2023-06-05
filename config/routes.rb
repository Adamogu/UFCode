Rails.application.routes.draw do
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
