Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :games, only: [:create, :index, :show, :destroy] do
    resources :user_games, only: [:create]
    resources :game_qcms, only: [:create]
    get "choose_language", to: "games#choose_language", as: :choose_language
    get "choose_level", to: "games#choose_level", as: :choose_level
  end
  resources :user_games, only: [:show, :update]
  # patch '/user_games/:id', to: 'user_games#update', as: 'update_user_games'
end
