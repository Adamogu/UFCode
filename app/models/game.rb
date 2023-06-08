class Game < ApplicationRecord
  has_many :game_qcms
  has_many :qcms, through: :game_qcms
  has_many :user_game
  has_many :users, through: :user_games
end
